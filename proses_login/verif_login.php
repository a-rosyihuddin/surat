<?php
if (isset($_POST["button"])) {
    $nik = $_POST["nik"];
    $nama = $_POST["nama"];
    $data = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT tb_user.user_nik, tb_user.nama_user FROM tb_user WHERE tb_user.user_nik = '$nik' AND tb_user.nama_user='$nama'"));
    if ($nik and $nama) {
        if ($data) {
            if ($nik == "admin") {
                $_SESSION["nik"] = $nik;
                header("location: ../admin/page_admin.php");
            } else {
                $_SESSION["nik"] = $nik;
                header("location: ../user/home.php");
            }
        } else { ?>
            <div style="color: red; margin: 5px;"><i><?= "Nama atau NIK Tidak Sesuai"; ?></i></div>
        <?php }
    } else { ?>
        <div style="color: red; margin: 5px;"><i><?= "Nama Dan NIK Tidak Boleh Kosong"; ?></i></div>
<?php }
} ?>