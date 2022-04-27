<?php
include "../connect/koneksi.php";
$tb_pengajuan = mysqli_query($koneksi,"SELECT * FROM tb_user INNER JOIN tb_pengajuan INNER JOIN tb_surat INNER JOIN tb_surat_keluar ON tb_pengajuan.kode_surat=tb_surat.kode_surat AND tb_user.nik=tb_pengajuan.nik_user AND tb_surat_keluar.id_pengajuan=tb_pengajuan.id_pengajuan");
while ($row = mysqli_fetch_assoc($tb_pengajuan)):
    if($row["file_surat"]==''){?>
        <tr>
            <td><?= $row["nik_user"] ?></td>
            <td><?= $row["nama"] ?></td>
            <td><?= $row["kode_surat"] ?></td>
            <td><?= $row["jenis_surat"] ?></td>
            <td><?= $row["waktu_pengajuan"] ?></td>
            <td><?= $row["keperluan"] ?></td>
            <td><?= $row["nomor_surat"] ?></td>
            <?php
            if($row["kode_surat"]=="SKTM"){?>
                <td>
                    <a href="../data_input/data_sktm.php?id_pengajuan=<?= $row['id_pengajuan']?>">View Data</a>
                </td>
            <?php }elseif($row["kode_surat"]=="SKK"){?>
                <td>
                    <a href="../data_input/data_skk.php?id_pengajuan=<?= $row['id_pengajuan']?>">View Data</a>
                </td>
            <?php }elseif($row["kode_surat"]=="SKM"){?>
                <td>
                    <a href="../data_input/data_skm.php?id_pengajuan=<?= $row['id_pengajuan']?>">View Data</a>
                </td>
            <?php }elseif($row["kode_surat"]=="SL"){?>
                <td>
                    <a href="../data_input/data_sl.php?id_pengajuan=<?= $row['id_pengajuan']?>">View Data</a>
                </td>
            <?php }elseif($row["kode_surat"]=="SPA"){?>
                <td>
                    <a href="../data_input/data_spa.php?id_pengajuan=<?= $row['id_pengajuan']?>">View Data</a>
                </td>
            <?php }elseif($row["kode_surat"]=="SPK"){?>
                <td>
                    <a href="../data_input/data_spk.php?id_pengajuan=<?= $row['id_pengajuan']?>">View Data</a>
                </td>
            <?php }?>
            <td>
                <a href="../admin/uplod.php?id_pengajuan=<?= $row["id_pengajuan"]?>&jenis_surat=<?= $row['jenis_surat']?>&nama=<?= $row["nama"] ?>&kode_surat=<?= $row['kode_surat']?>"><button type="button" class="btn btn-primary">Upload</button></a>
            </td>
        </tr>
    <?php
    }
endwhile; 
?>