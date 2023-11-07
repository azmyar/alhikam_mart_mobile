# Alhikam Mart Mobile.
Your neighborhood's one-stop shop for groceries and essentials with a touch of local charm.
## Questions
<details>
<summary>&ensp;Tugas 7</summary>

#### 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
- Stateless Widget:
    - Stateless widget adalah jenis widget yang tidak memiliki data berubah (state) di dalamnya. Ini berarti tampilan widget ini tetap konstan dan tidak berubah sepanjang siklus hidupnya.
    - Stateless widget umumnya digunakan untuk tampilan yang tidak memerlukan perubahan data atau interaksi pengguna yang kompleks.
    - Ketika menggunakan stateless widget, setiap kali ingin memperbarui tampilan, kita harus membuat widget baru dengan properti yang berbeda.
- Stateful Widget:
    - Stateful widget adalah jenis widget yang memiliki data yang dapat berubah (state) di dalamnya. Data ini dapat diperbarui selama siklus hidup widget.
    - Stateful widget umumnya digunakan untuk tampilan yang memerlukan pembaruan data atau interaksi pengguna yang kompleks, seperti formulir atau daftar item yang dapat digulir.
    - Ketika data di dalam stateful widget berubah, widget tersebut dapat membangun kembali tampilan secara otomatis.

#### 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
- **Scaffold**: Scaffold adalah widget yang digunakan sebagai kerangka dasar untuk halaman aplikasi. Ia mengatur elemen-elemen seperti AppBar dan body, membuat tata letak umum untuk halaman.

- **AppBar**: AppBar adalah bagian atas halaman yang menampilkan judul aplikasi. Ini memberikan ruang untuk menampilkan judul aplikasi dan ikon lainnya.

- **SingleChildScrollView**: SingleChildScrollView adalah widget yang digunakan untuk membuat halaman dapat digulir. Ini berguna ketika konten halaman melebihi ukuran layar sehingga pengguna dapat menggulir ke bawah untuk melihat lebih banyak konten.

- **Padding**: Padding adalah widget yang digunakan untuk menambahkan ruang kosong (padding) di sekitar elemen-elemen dalam tata letak. Ini membantu dalam mengatur jarak antara elemen-elemen.

- **Column**: Column adalah widget yang digunakan untuk menata elemen-elemen secara vertikal. Ini memungkinkan penempatan beberapa widget dalam satu kolom.

- **GridView.count**: GridView adalah widget yang digunakan untuk menampilkan elemen dalam bentuk grid. Dalam kasus ini, GridView.count digunakan untuk membuat grid dengan jumlah kolom yang tetap.

- **InkWell**: InkWell adalah widget yang digunakan untuk membuat area yang responsif terhadap sentuhan pengguna. Ketika digunakan dalam tampilan item, ini memungkinkan item tersebut merespons ketika diklik.

- **Material**: Material adalah widget yang digunakan untuk memberikan latar belakang berwarna pada tampilan item dalam bentuk kartu.

- **SnackBar**: SnackBar adalah widget yang digunakan untuk menampilkan pesan singkat kepada pengguna ketika sesuatu terjadi, seperti ketika salah satu item di klik. Ini memberikan umpan balik singkat kepada pengguna.

- **Text**: Text adalah widget yang digunakan untuk menampilkan teks. Dalam aplikasi ini, digunakan untuk menampilkan judul dan nama item.

- **Icon**: Widget Icon digunakan untuk menampilkan ikon pada tampilan item di dalam grid. Ikon ini dapat bervariasi sesuai dengan item yang direpresentasikan. 
#### 3. Step by Step
- Buat file baru bernama `menu.dart` dalam direktori `alhikam_mart_mobile/lib` dan pindahkan kode class `MyHomePage` ke file `menu.dart`.

- Tambahkan import `package:alhikam_mart_mobile/menu.dart` di awal file `main.dart` untuk mengatasi masalah class MyHomePage yang dipindahkan.

- Mengubah widget halaman menu dari **stateful** menjadi **stateless** dengan menghapus parameter title pada `MyHomePage` di `menu.dart` dan menghapus fungsi `State`.

- Menambahkan class `ShopItem` dengan atribut nama, icon, dan color agar nantinya memungkinkan implementasi warna yang berbeda tiap card. **(Bonus)**

- Menambahkan daftar menu dalam bentuk list `ShopItem` di `menu.dart`.

- Menambahkan kode untuk menampilkan teks dan card yang mewakili barang-barang yang dijual di dalam method build di `menu.dart`.

- Membuat widget stateless baru dengan nama `ShopCard` untuk menampilkan setiap card barang di dalam grid layout.

- Mengimplementasikan tampilan card dengan ikon dan teks, serta menambahkan fungsi onTap untuk menampilkan `SnackBar` ketika card di-tap.

</details>
