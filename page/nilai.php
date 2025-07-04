<!-- judul -->
<div class="panel">
    <div class="panel-middle" id="judul">
        <img src="asset/image/bobot.svg">
        <div id="judul-text">
            <h2 class="text-green">PENILAIAN</h2>
            Halamanan Administrator Penilaian
        </div>
    </div>
</div>
<!-- judul -->
<div class="row">
    <div class="col-4">
        <div class="panel">
            <?php
            if (@htmlspecialchars($_GET['aksi']) == 'ubah') {
                include 'ubahnilai.php';
            } elseif (@htmlspecialchars($_GET['aksi']) == 'lihat') {
                include 'lihatnilai.php';
            } elseif (@htmlspecialchars($_GET['aksi']) == 'hapus') {
                include 'hapusnilai.php';
            } else {
                include 'tambahnilai.php';
            }
            ?>
        </div>
    </div>
    <div class="col-8">
        <div class="panel">
            <div class="panel-top">
                <b style="float: left" class="text-green">Daftar Nilai</b>
                <div style="float:right;width: 250px;">
                    <select class="form-custom" name="pilih" id="pilihNilai">
                        <option value="">Semua Jenis Barang</option>
                        <?php
                        $pilih = isset($_GET['pilih']) ? $_GET['pilih'] : '';

                        $query = "SELECT * FROM jenis_barang";
                        $execute = $konek->query($query);

                        if ($execute->num_rows > 0) {
                            while ($data = $execute->fetch_array(MYSQLI_ASSOC)) {
                                if ($pilih == $data['id_jenisbarang']) {
                                    $selected = "selected";
                                } else {
                                    $selected = null;
                                }
                                echo "<option $selected value=" . $data['id_jenisbarang'] . ">" . $data['namaBarang'] . "</option>";
                            }
                        } else {
                            echo '<option disabled value="">Tidak ada data</option>';
                        }
                        ?>
                    </select>
                </div>
                <div style="clear: both;"></div>
            </div>
            <div class="panel-middle" id="animation">
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Barang</th>
                                <th>Nama Supplier</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody id="isiNilai">
                            <?php
                            $no = 1;
                            $query = "SELECT nilai_supplier.id_supplier, supplier.namaSupplier, jenis_barang.namaBarang, nilai_supplier.id_jenisbarang
                                      FROM nilai_supplier
                                      JOIN supplier ON nilai_supplier.id_supplier = supplier.id_supplier
                                      JOIN jenis_barang ON nilai_supplier.id_jenisbarang = jenis_barang.id_jenisbarang
                                      GROUP BY nilai_supplier.id_supplier, nilai_supplier.id_jenisbarang";

                            $execute = $konek->query($query);
                            if ($execute->num_rows > 0) {
                                while ($data = $execute->fetch_array(MYSQLI_ASSOC)) {
                                    echo "<tr>";
                                    echo "<td>" . $no++ . "</td>";
                                    echo "<td>" . $data['namaBarang'] . "</td>";
                                    echo "<td>" . $data['namaSupplier'] . "</td>";
                                    echo "<td>
                                        <a href='?page=penilaian&aksi=ubah&id=" . $data['id_supplier'] . "&id_jenisbarang=" . $data['id_jenisbarang'] . "'>Ubah</a> | 
                                        <a href='?page=penilaian&aksi=hapus&id=" . $data['id_supplier'] . "&id_jenisbarang=" . $data['id_jenisbarang'] . "' onclick='return confirm(\"Yakin ingin menghapus?\")'>Hapus</a>
                                        </td>";
                                    echo "</tr>";
                                }
                            } else {
                                echo "<tr><td colspan='4' style='text-align:center;'>Tidak ada data</td></tr>";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel-bottom"></div>
        </div>
    </div>
</div>
