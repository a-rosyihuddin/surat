<?php
if(isset($_POST["button"])){
    $nik = $_POST["nik"];
    $nama = $_POST["nama"];
    $data = mysqli_fetch_assoc(mysqli_query($koneksi,"SELECT nik, nama from tb_user where nik='$nik' and nama='$nama'"));

    if($nik and $nama){
        if($data){
            if($nik=="admin"){
                $_SESSION["nik"] = $nik;
                header("location: ../admin/page_admin.php");
            }else{
                $_SESSION["nik"] = $nik;
                header("location: ../user/home.php");
            }
        }else{?>   
            <div style="color: red; margin: 5px;"><i><?= "Nama atau NIK Tidak Sesuai";?></i></div>
        <?php }
    }else{?>
        <div style="color: red; margin: 5px;"><i><?= "Nama Dan NIK Tidak Boleh Kosong";?></i></div> 
    <?php }
}?>