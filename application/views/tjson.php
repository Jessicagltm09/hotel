<!DOCTYPE html>
<html>
<head>
 <title>Menampilkan Tabel</title>

 <style>

  table {
   width: 100%;
   border-collapse: collapse;
  }

  td, th {
   padding: 1rem;
   border-bottom: 1px solid #DDD;
  }

  th {
    background-color: green;
    color: #fff;
  }

  tr:hover {
    background-color: #F5F5F5;
  }

 </style>

</head>
<body>

 <table>
  <tr>
   <th>Nomor</th>
   <th>Nomor Kamar</th>
   <th>Harga Kamar</th>
   <th>Fasilitas Kamar</th>
   <th>Status Kamar</th>
   <th>Nomor Kelas Kamar</th>
  </tr>

  <?php foreach ($result as $row): ?>
    <tr>
      <td><?= $row['id_kamar']; ?></td>
      <td><?= $row['nomer_kamar']; ?></td>
      <td><?= $row['harga_kamar']; ?></td>
      <td><?= $row['fasilitas_kamar']; ?></td>
      <td><?= $row['status_kamar']; ?></td>
      <td><?= $row['kelas_kamar_id']; ?></td>
    </tr>
  <?php endforeach; ?>
 </table>

</body>
</html>