<?php
include "../connect/koneksi.php";
$tb_user = mysqli_query($koneksi, "SELECT * FROM tb_user");
while ($row = mysqli_fetch_assoc($tb_user)) :
    if ($row["role_user"] != 'Admin' and $row['user_nik'] != NULL) { ?>
        <tr>
            <td><?= $row["nik"] ?></td>
            <td><?= $row["nama_user"] ?></td>
            <td><?= $row["rt"] ?></td>
            <td><?= $row["rt"] ?></td>
            <td>
                <a href="../edit_data/edit_user.php?nik=<?= $row["nik"] ?>"><button type="button" class="btn btn-primary">Edit</button></a>
                <a href="../hapus_data/hapus_user.php?nik=<?= $row["nik"] ?>"><button type="button" class="btn btn-danger">Hapus</button></a>
            </td>
        </tr>
    <?php } ?>
<?php
endwhile;
?>