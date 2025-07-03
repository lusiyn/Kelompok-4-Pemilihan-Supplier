<?php
// Wajib panggil autoload composer
require 'vendor/autoload.php';

use Dompdf\Dompdf;
use Dompdf\Options;

session_start();
ob_start();
?>
<html>
<head>
    <style>
        * { padding: 0; margin: 0; }
        #header { width: 100%; padding: 10px; margin-bottom: 10px; border: solid 2px black; text-align: center; }
        .text-underline { text-decoration: underline; }
        .text-center { text-align: center; }
        #judul { margin: 10px 0px 30px 0px; }
        table { text-align: center; border-collapse: collapse; margin: 7px 0px 15px 0px; }
        table tr { border: none; }
        table th { padding: 5px 8px; border: solid 1px #e9ecef; border-bottom: solid 2px #e9ecef; font-weight: bold; }
        table td { border: solid 1px #e9ecef; padding: 5px; }
        table tr#data:nth-child(odd) { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <div id="header">
        <h4>Sistem Pendukung Keputusan Pemilihan Supplier</h4>
        <h2>CV. BIMANTARA</h2>
    </div>
    <div id="judul" class="text-center">
        <p class="text-underline">Hasil Perhitungan</p>
    </div>
    <div id="body">
        <?php include 'hasil.php'; ?>
    </div>
    <div style="text-align: right; font-size: 9pt; margin-top: 20px;">
        Dicetak oleh <b><?php echo $_SESSION['user']; ?></b>
    </div>
</body>
</html>

<?php
$html = ob_get_clean();

$options = new Options();
$options->set('isRemoteEnabled', true);

$dompdf = new Dompdf($options);
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();
$dompdf->stream("Hasil_Perhitungan_Supplier.pdf", array("Attachment" => false));
exit();
?>
