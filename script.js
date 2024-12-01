function hitungTotal() {
    const tipeKamar = parseInt(document.getElementById("tipe").value);
    const durasi = parseInt(document.getElementById("durasi").value);
    const breakfast = document.getElementById("breakfast").checked;

    // Validasi input durasi
    if (isNaN(durasi) || durasi <= 0) {
        alert("Durasi menginap harus berupa angka dan lebih dari 0!");
        return;
    }


    // Kalkulasi total
    let total = tipeKamar * durasi;

    // Diskon 10% jika menginap lebih dari 3 malam
    if (durasi > 3) {
        total *= 0.9; // Diskon 10%
    }

    // Tambah biaya breakfast jika dipilih
    if (breakfast) {
        total += 80000; // Tambah biaya breakfast
    }

    // Menampilkan total dengan format rupiah untuk pengguna
    document.getElementById("total_tampil").value = "Rp " + total.toLocaleString("id-ID");

    // Menyimpan total tanpa format di input tersembunyi
    document.getElementById("total").value = total;
}
