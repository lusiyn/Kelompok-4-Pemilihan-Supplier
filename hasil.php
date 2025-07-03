<?php
session_start(); 
require 'connect.php';
require 'class/saw.php';

$cookiePilih = @$_COOKIE['pilih'];
if (isset($cookiePilih) && !empty($cookiePilih)) {
    $saw = new saw();
    $saw->setconfig($konek, $cookiePilih);
?>
<!-- Matriks Keputusan -->
<div id="Matriks Keputusan">
    <h3>Matriks Keputusan</h3>
    <table>
        <thead>
            <tr>
                <th rowspan="2">Alternative</th>
                <th colspan="<?= count($saw->getKriteria()) ?>">Kriteria</th>
            </tr>
            <tr>
                <?php foreach ($saw->getKriteria() as $key) echo "<th>$key</th>"; ?>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach ($saw->getAlternative() as $key) {
                echo "<tr id='data'><td>{$key['namaSupplier']}</td>";
                foreach ($saw->getNilaiMatriks($key['id_supplier']) as $data) {
                    echo "<td>{$data['nilai']}</td>";
                }
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>
</div>

<!-- Normalisasi Matriks -->
<div id="Normalisasi Matriks Keputusan">
    <h3>Normalisasi Matriks Keputusan</h3>
    <table>
        <thead>
            <tr>
                <th rowspan="2">Alternative</th>
                <th colspan="<?= count($saw->getKriteria()) ?>">Kriteria</th>
            </tr>
            <tr>
                <?php foreach ($saw->getKriteria() as $key) echo "<th>$key</th>"; ?>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach ($saw->getAlternative() as $key) {
                echo "<tr id='data'><td>{$key['namaSupplier']}</td>";
                $no = 0;
                foreach ($saw->getNilaiMatriks($key['id_supplier']) as $data) {
                    $hasil = $saw->Normalisasi($saw->getArrayNilai($data['id_kriteria']), $data['sifat'], $data['nilai']);
                    echo "<td>$hasil</td>";
                    $hitungbobot[$key['id_supplier']][$no] = $hasil * $saw->getBobot($data['id_kriteria']);
                    $no++;
                }
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>
</div>

<!-- Perangkingan -->
<div id="Perangkingan">
    <h3>Perangkingan</h3>
    <table>
        <thead>
            <tr>
                <th rowspan="2">Alternative</th>
                <th colspan="<?= count($saw->getKriteria()) ?>">Kriteria</th>
                <th rowspan="2">Hasil</th>
            </tr>
            <tr>
                <?php foreach ($saw->getKriteria() as $key) echo "<th>$key</th>"; ?>
            </tr>
        </thead>
        <tbody>
            <?php
            $nilaiAkhir = [];
            $peringkat = 1;

            foreach ($saw->getAlternative() as $key) {
                echo "<tr id='data'><td>{$key['namaSupplier']}</td>";
                $no = 0; $hasil = 0;
                foreach ($hitungbobot[$key['id_supplier']] as $data) {
                    echo "<td>$data</td>";
                    $hasil += $data;
                }
                echo "<td>$hasil</td></tr>";
                $saw->simpanHasil($key['id_supplier'], $hasil);
                $nilaiAkhir[] = ['nama' => $key['namaSupplier'], 'nilai' => $hasil];

                // Simpan ke tabel analisis_sensitivitas (tanpa tampil ke web)
                if (isset($_SESSION['id_admin'])) {
                    $id_admin = $_SESSION['id_admin'];
                    $id_bobotkriteria = 1; // sesuaikan jika kamu punya bobot dinamis
                    $id_supplier = $key['id_supplier'];
                    $skor_skw = $hasil;
                    $timestamp = date('Y-m-d H:i:s');

                    // Cegah duplikat pada tanggal yang sama
                    $cek = $konek->query("SELECT * FROM analisis_sensitivitas 
                                          WHERE id_supplier = '$id_supplier' 
                                          AND id_bobotkriteria = '$id_bobotkriteria' 
                                          AND DATE(timestamp) = CURDATE()");

                    if ($cek->num_rows == 0) {
                        $konek->query("INSERT INTO analisis_sensitivitas 
                            (Id_admin, id_bobotkriteria, id_supplier, skor_skw, peringkat, timestamp)
                            VALUES ('$id_admin', '$id_bobotkriteria', '$id_supplier', '$skor_skw', '$peringkat', '$timestamp')");
                    }
                }

                $peringkat++;
            }
            ?>
        </tbody>
    </table>
</div>

<!-- Grafik -->
<canvas id="rankingChart" width="400" height="200"></canvas>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
const ctx = document.getElementById('rankingChart').getContext('2d');
const rankingChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: [<?= implode(",", array_map(fn($x) => "'{$x['nama']}'", $nilaiAkhir)) ?>],
        datasets: [{
            label: 'Nilai Akhir',
            data: [<?= implode(",", array_column($nilaiAkhir, 'nilai')) ?>],
            backgroundColor: [
                'rgba(75, 192, 192, 0.6)',
                'rgba(255, 99, 132, 0.6)',
                'rgba(255, 206, 86, 0.6)',
                'rgba(54, 162, 235, 0.6)',
                'rgba(153, 102, 255, 0.6)',
                'rgba(255, 159, 64, 0.6)'
            ],
            borderColor: 'rgba(0,0,0,0.3)',
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true,
                title: {
                    display: true,
                    text: 'Nilai'
                }
            }
        },
        plugins: {
            legend: { display: false },
            title: {
                display: true,
                text: 'Grafik Hasil Perangkingan Supplier'
            }
        }
    }
});
</script>

<?php
$saw->getHasil();
}
?>
