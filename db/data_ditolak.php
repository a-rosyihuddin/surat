<?php
include "../connect/koneksi.php";
$tb_pengajuan = mysqli_query($koneksi,"SELECT * FROM tb_user INNER JOIN tb_pengajuan  INNER JOIN tb_surat ON tb_pengajuan.kode_surat=tb_surat.kode_surat AND tb_user.nik=tb_pengajuan.nik_user");
while ($row = mysqli_fetch_assoc($tb_pengajuan)):
    if($row["status_pengajuan"]=="Di Tolak"){?>
        <tr>
            <td><?= $row["nik_user"] ?></td>
            <td><?= $row["nama"] ?></td>
            <td><?= $row["kode_surat"] ?></td>
            <td><?= $row["jenis_surat"] ?></td>
            <td><?= $row["waktu_pengajuan"] ?></td>
            <td><?= $row["keperluan"] ?></td>
        </tr>
    <?php
    }
endwhile; 
?>