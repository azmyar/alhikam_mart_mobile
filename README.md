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

<details>
<summary>&ensp;Tugas 8</summary>

#### 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai contoh!

- `Navigator.push()`: **Menambahkan halaman baru ke tumpukan navigasi, memungkinkan pengguna untuk kembali ke halaman sebelumnya.**
    - Misal pada aplikasi dengan halaman daftar item, dan ketika pengguna memilih salah satu item, kita ingin menavigasikannya ke halaman detail item. Dalam hal ini, `Navigator.push()` akan sesuai karena kita ingin menambahkan halaman detail ke tumpukan navigasi dan membiarkan pengguna kembali ke halaman daftar.
```dart
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailItemPage(selectedItem)),
);
```

- `Navigator.pushReplacement()`: **Menambahkan halaman baru dan menggantikan halaman saat ini dalam tumpukan, mencegah pengguna untuk kembali ke halaman sebelumnya.**
    - Misal pada formulir login, setelah pengguna berhasil login, halaman login akan digantikan dengan halaman beranda. Dalam hal ini, kita menggunakan `Navigator.pushReplacement()` agar pengguna tidak dapat kembali ke halaman login setelah login berhasil.
```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => BerandaPage()),
);
```

#### 2. Jelaskan masing-masing layout widget pada Flutter dan Konteks Penggunaannya masing-masing!
- Container:

    - **Deskripsi**: Container adalah widget yang dapat mengandung widget lain dan memberikan kontrol atas properti seperti padding, margin, dan dekorasi.
    - **Konteks Penggunaan**: Digunakan untuk mengelompokkan dan mengatur widget lain dengan memberikan properti seperti padding, margin, dan dekorasi.

- Column:

    - **Deskripsi**: Column adalah widget yang mengatur anak-anaknya dalam kolom vertikal.
    - **Konteks Penggunaan**: Berguna ketika Anda ingin menyusun widget secara vertikal, seperti dalam daftar atau tata letak kolom pada layar.

- Row:

    - **Deskripsi**: Row adalah widget yang mengatur anak-anaknya dalam baris horizontal.
    - **Konteks Penggunaan**: Cocok untuk menyusun widget secara horizontal, seperti dalam baris tombol atau tata letak baris pada layar.

- ListView:

    - **Deskripsi**: ListView adalah widget yang menyusun anak-anaknya dalam daftar bergulir.
    - **Konteks Penggunaan**: Ideal untuk menampilkan daftar elemen yang mungkin lebih besar dari layar, seperti daftar kontak atau pesan.

- GridView:

    - **Deskripsi**: GridView adalah widget yang menyusun anak-anaknya dalam bentuk grid.
    - **Konteks Penggunaan**: Berguna ketika Anda ingin menampilkan elemen dalam bentuk grid, seperti galeri gambar atau tampilan produk.

- Stack:

    - **Deskripsi**: Stack adalah widget yang menyusun anak-anaknya secara tumpuk, satu di atas yang lain.
    - **Konteks Penggunaan**: Digunakan untuk menyusun widget secara bersamaan, seperti tumpukan kartu atau tata letak lapisan pada layar.

#### 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan alasannya!
- `TextFormField` digunakan untuk mengambil input teks seperti nama, harga, dan deskripsi. 
    - Memiliki dukungan untuk validasi input melalui properti `validator`, memastikan bahwa data yang dimasukkan sesuai dengan aturan yang diinginkan.
    - Memungkinkan untuk menyesuaikan tampilan input, seperti menambahkan placeholder, label, dan border melalui properti `decoration`.
- `ElevatedButton` digunakan untuk memicu aksi simpan formulir. 
    - Memberikan tombol yang dapat diklik untuk memicu aksi terkait formulir, dalam hal ini, menyimpan data produk ke daftar.

#### 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Penerapan **Clean Architecture** pada aplikasi Flutter melibatkan pemisahan kode ke dalam lapisan-lapisan yang berbeda, dengan setiap lapisan memiliki tanggung jawab dan aturan tertentu. Berikut adalah tiga lapisan utama **Clean Architecture** dan penerapannya dalam konteks Flutter:

##### 1. Domain Layer:
**Entities**: Model objek bisnis.
**Repositories**: Interface untuk mengakses data.
**Use Cases / Interactors**: Aturan bisnis aplikasi.

##### 2. Data Layer:
**Repositories Implementations**: Implementasi dari repository untuk mendapatkan data dari sumber eksternal.
**Data Models**: Representasi data yang diperoleh dari sumber eksternal.

##### 3. Presentation Layer:
**UI (User Interface)**: Menampilkan informasi dan menerima input dari pengguna.
**ViewModels / Presenters**: Mengelola logika presentasi dan berinteraksi dengan use cases.
**Dependency Injection (DI)**: Menggunakan DI untuk menyediakan dependensi pada lapisan Presentation.

#### 5. Step by Step
- Menambah Drawer Menu untuk Navigasi
    - Membuat folder `widgets` berisikan `left_drawer.dart`.
    - Impor untuk halaman-halaman yang kita ingin masukkan navigasinya ke dalam `left_drawer.dart`.
    - Memasukkan routing untuk halaman-halaman yang kita impor.
    - Memasukkan drawer tersebut ke halaman yang ingin kamu tambahkan drawer (`menu.dart`, `shoplist_form.dart`, dan `shoplist_items.dart`)
    - Menghias drawer.
- Menambahkan Form dan Elemen Input
    - Membuat folder `screens` dengan file baru `shoplist_form.dart`.
    - Membuat widget `TextFormField` untuk input dan `ElevatedButton` untuk tombol submit.
- Memunculkan Data
    - Menambahkan fungsi `showDialog()` di bagian `onPressed()` pada widget `ElevatedButton` dan munculkan widget `AlertDialog`
    berisikan detail (nama, price, deskripsi) dari product.
- Bonus
    - Membuat List baru `products` pada folder `main.dart` 
    - Menambahkan file baru `shoplist_items.dart` pada folder `screens` untuk memunculkan produk-produk yang pernah dibuat.
    - Membuat fungsi untuk membuat objek baru dari class `Product`, dan menambahkannya ke list `products` setiap tombol save pada `shoplist_form.dart` ditekan.
    - Membuat `ListTile` baru dengan nama **Lihat Produk** pada Left Drawer
    - Membuat routing dari **Left Drawer** dan tombol **Lihat Produk** di home ke page untuk melihat semua prduk (`shoplist_items.dart`)
</details>