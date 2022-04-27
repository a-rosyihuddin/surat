<?php
session_start();
include "../connect/koneksi.php";
if( isset($_POST["update_user"]) ){
    $nik_lama = $_GET["nik_lama"];
    $nik_baru = $_POST["nik"];
    $nama = $_POST["nama"];
    $up = ucfirst($nama);
    $rt= $_POST["rt"];
    $rw= $_POST["rw"];
    echo $username_lama;
    echo $username;
    
    if($nik_baru==$nik_lama){
        // memasukkan data kamar ke dalam database
        $update = mysqli_query($koneksi,"UPDATE tb_user SET nik='$nik_lama', nama='$nama', rt=$rt, rw=$rw WHERE tb_user.nik='$nik_lama'");
        // cek data berhasil di masukkan atau tidak
        if($update){
            header("location: ../admin/user.php");
            $_SESSION["pesan"] = "sukses1";
            echo "Berhasil1";
        }else{
            header("location: ../admin/user.php");
            $_SESSION["pesan"] = "gagal";
            echo "Gagal2";
        }
    }else{
        $cek_nik =mysqli_query($koneksi,"SELECT * FROM tb_tamu WHERE username_tamu='$nik_baru'");
        if(!mysqli_num_rows($cek_nik)){
            // memasukkan data kamar ke dalam database
            $update = mysqli_query($koneksi,"UPDATE tb_user SET nik='$nik_baru', nama='$nama', rt=$rt, rw=$rw WHERE tb_user.nik='$nik_lama'");
            // cek data berhasil di masukkan atau tidak
            if($update){
                header("location: ../admin/user.php");
                $_SESSION["pesan"] = "sukses1";
                echo "Berhasil1";
            }else{
                header("location: ../admin/user.php");
                $_SESSION["pesan"] = "gagal";
                echo "Gagal2";
            }
        }else{
            header("location: ../admin/user.php");
            $_SESSION["pesan"] = "gagal1";
            echo "Gagal3";
        }
    }
}
?>