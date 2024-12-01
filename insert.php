<?php

//koneksi ke database
$conn = new mysqli("localhost", "root", "", "hotel_db");

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
//mengambil data dari formulir
$nama = $_POST['nama'];
$gender = $_POST['gender'];
$identitas = $_POST['identitas'];
$tipe = $_POST['tipe'];
$tanggal = $_POST['tanggal'];
$durasi = $_POST['durasi'];
$breakfast = isset($_POST['breakfast']) ? 1 : 0;
$total = $_POST['total'];

// Validasi input
if (empty($nama)) {
    die("Nama pemesan tidak boleh kosong.");
}

if ($gender !== "Laki-laki" && $gender !== "Perempuan") {
    die("Jenis kelamin tidak valid.");
}

if (!is_numeric($identitas) || strlen($identitas) != 16) {
    die("Nomor identitas harus berupa 16 digit angka.");
}

if (!is_numeric($tipe) || ($tipe != 300000 && $tipe != 500000 && $tipe != 800000)) {
    die("Tipe kamar tidak valid.");
}

if (empty($tanggal)) {
    die("Tanggal pesan tidak boleh kosong.");
}

if (!is_numeric($durasi) || $durasi <= 0) {
    die("Durasi menginap harus lebih dari 0.");
}

// Pastikan total dihitung ulang di server untuk mencegah manipulasi
$calculated_total = $tipe * $durasi;
if ($durasi > 3) {
    $calculated_total *= 0.9; // Diskon 10%
}
if ($breakfast) {
    $calculated_total += 80000;
}

if ($calculated_total != $total) {
    die("Total bayar tidak valid.");
}

// Insert data ke database atau menyimpan data ke database
$stmt = $conn->prepare("INSERT INTO pemesanan (nama, gender, identitas, tipe, tanggal, durasi, breakfast, total) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sssisiis", $nama, $gender, $identitas, $tipe, $tanggal, $durasi, $breakfast, $total);

if ($stmt->execute()) {
    // Menampilkan resume pemesanan
    echo "<h2>Resume Pemesanan</h2>";
    echo "<p>Nama Pemesan: <strong>$nama</strong></p>";
    echo "<p>Jenis Kelamin: <strong>$gender</strong></p>";
    echo "<p>Nomor Identitas: <strong>$identitas</strong></p>";
    echo "<p>Tipe Kamar: <strong>";
    
    // Mengubah tipe kamar ke format deskriptif
    if ($tipe == 300000) {
        echo "Standar";
    } elseif ($tipe == 500000) {
        echo "Deluxe";
    } elseif ($tipe == 800000) {
        echo "Family";
    }
    
    echo "</strong></p>";
    echo "<p>Tanggal Pesan: <strong>$tanggal</strong></p>";
    echo "<p>Durasi Menginap: <strong>$durasi malam</strong></p>";
    echo "<p>Termasuk Sarapan: <strong>" . ($breakfast ? "Ya" : "Tidak") . "</strong></p>";
    echo "<p>Total Bayar: <strong>Rp " . number_format($total, 0, ',', '.') . "</strong></p>";
    echo "<br><a href='index.html'>Kembali ke Beranda</a>";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
