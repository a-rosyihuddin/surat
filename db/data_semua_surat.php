<?php
include "../connect/koneksi.php";
$tb_pengajuan = mysqli_query($koneksi,"SELECT * FROM tb_surat_keluar INNER JOIN tb_pengajuan INNER JOIN tb_user INNER JOIN tb_surat ON tb_surat_keluar.id_pengajuan=tb_pengajuan.id_pengajuan AND tb_surat_keluar.nik_user=tb_user.nik AND tb_surat.kode_surat=tb_pengajuan.kode_surat");
while ($row = mysqli_fetch_assoc($tb_pengajuan)):
    if($row['file_surat']!=''){?>
        <tr>
            <td><?= $row["nomor_surat"] ?></td>
            <td><?= $row["nama"] ?></td>
            <td><?= $row["nik_user"] ?></td>
            <td><?= $row["kode_surat"] ?></td>
            <td><?= $row["jenis_surat"] ?></td>
            <td>
                <a href="../surat_keluar/<?= $row['file_surat']?>"><button type="button" class="btn btn-primary">Download</button></a>
            </td>
        </tr>
    <?php
    }
endwhile; 
?>