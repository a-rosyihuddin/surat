<?php
include "../connect/koneksi.php";
session_start();
$id_pengajuan = $_GET["id_pengajuan"];
$kode_surat = $_GET["kode_surat"];
$nik_user = $_GET["nik_user"];
$bulan = date('m');
$tahun = date('Y');
$data = mysqli_fetch_assoc(mysqli_query($koneksi,"SELECT COUNT(tb_surat_keluar.nomor_surat) AS nomor FROM tb_surat_keluar"));
$nomor = (string)$data["nomor"]+1;
if(strlen($nomor)==1){
    $nomor_surat = '0'.$nomor.'/'.$kode_surat.'/'.'DesaPare'.'/'.$bulan.'/'.$tahun;
}else{
    $nomor_surat = $nomor.'/'.$kode_surat.'/'.'DesaPare'.'/'.$bulan.'/'.$tahun;
}

$update = mysqli_query($koneksi,"UPDATE tb_pengajuan SET tb_pengajuan.status_pengajuan='Di Terima' where tb_pengajuan.id_pengajuan=$id_pengajuan");
$tambah_nomor_surat = mysqli_query($koneksi,"INSERT INTO tb_surat_keluar(nomor_surat, id_pengajuan, kode_surat, nik_user, file_surat) VALUES('$nomor_surat',$id_pengajuan, '$kode_surat', '$nik_user', '')");
$tambah_suratKeluar = mysqli_query($koneksi,"UPDATE tb_surat SET tb_surat.surat_keluar= (SELECT tb_surat.surat_keluar+1) WHERE tb_surat.kode_surat='$kode_surat'");

if($update && $tambah_nomor_surat && $tambah_suratKeluar){
    $_SESSION["pesan"] = "sukses";
    header("location: ../admin/page_admin.php");
    echo "Berhasil";
}else{
    $_SESSION["pesan"] = "gagal";
    header("location: ../admin/page_admin.php");
    echo "Gagal";
}
?>