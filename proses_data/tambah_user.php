<?php
include "../connect/koneksi.php";
session_start();
if (isset($_POST["tambah_data"])) {
    $nik = $_POST["nik"];
    $nama = $_POST["nama"];
    $up = ucfirst($nama); //merubah huruf pertama menjadi kapital

    $cek_user = mysqli_query($koneksi, "SELECT * FROM tb_user WHERE nik='$nik'");
    if (mysqli_num_rows($cek_user)) {
        $inp_data = mysqli_query($koneksi, "UPDATE tb_user SET user_nik = '$nik' where tb_user.nik = '$nik'");
        if ($inp_data) {
            header("location: ../input_data/input_user.php");
            $_SESSION["pesan"] = "sukses";
        } else {
            header("location: ../input_data/input_user.php");
            $_SESSION["pesan"] = "gagal";
            echo "Gagal";
        }
    } else {
        header("location: ../input_data/input_user.php");
        $_SESSION["pesan"] = "gagal";
    }
}
