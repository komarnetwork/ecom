<?php

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        // PAPAN BUNGA
        Category::create([
            'parent_id' => '0',
            'level' => '0',
            'name' => 'Papan Bunga',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => '14',
            'icon' => '14',
            'featured' => '1',
            'top' => '0',
            'digital' => '0',
            'slug' => 'papan-bunga',
            'meta_title' => 'papan bunga',
            'meta_description' => 'kami menjual papan bunga, karangan bunga berkualitas dengan harga terjangkau. bunga kami asli dan premium serta bisa bertahan lama, kami melayani online 24 jam'
        ]);

        Category::create([
            'parent_id' => '1',
            'level' => '1',
            'name' => 'Ucapan Selamat',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'ucapan-selamat',
            'meta_title' => 'Bunga Papan Ucapan Selamat',
            'meta_description' => 'bunga papan ucapan selamat berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama'
        ]);
        Category::create([
            'parent_id' => '2',
            'level' => '2',
            'name' => 'Bunga Papan Ucapan Selamat',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'bunga-papan-ucapan-selamat',
            'meta_title' => 'Bunga Papan Ucapan Selamat',
            'meta_description' => 'bunga papan ucapan selamat berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama'
        ]);

        Category::create([
            'parent_id' => '1',
            'level' => '1',
            'name' => 'Ucapan Wedding',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'ucapan-wedding',
            'meta_title' => 'Ucapan Wedding',
            'meta_description' => 'bunga papan wedding berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama'
        ]);

        Category::create([
            'parent_id' => '4',
            'level' => '2',
            'name' => 'Bunga Papan Wedding',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'bunga-papan-ucapan-wedding',
            'meta_title' => 'Bunga Papan Wedding',
            'meta_description' => 'Bunga Papan Wedding berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama'
        ]);

        Category::create([
            'parent_id' => '1',
            'level' => '1',
            'name' => 'Ucapan Duka Cita',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'ucapan-duka-cita',
            'meta_title' => 'Ucapan Duka Cita',
            'meta_description' => 'Ucapan Duka Cita dengan bunga berkualitas dan harga terjangkau, bunga papan duka cita termurah, bunga papan, papan bunga, bunga papan murah, bunga duka cita murah berkualitas, bunga duka cita jakarta'
        ]);

        Category::create([
            'parent_id' => '6',
            'level' => '2',
            'name' => 'Bunga Papan Duka Cita',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'bunga-papan-duka-cita',
            'meta_title' => 'Bunga Papan Duka Cita',
            'meta_description' => 'bunga papan duka cita berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama'
        ]);




        Category::create([
            'parent_id' => '0',
            'level' => '0',
            'name' => 'Semua Bunga',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => '8',
            'icon' => '8',
            'featured' => '1',
            'top' => '0',
            'digital' => '0',
            'slug' => 'semua-bunga',
            'meta_title' => 'Semua Bunga Hand Bucket, Bunga Tangan, Bunga Meja',
            'meta_description' => 'hand bucket premium berkualitas dan harga terjangkau, bunga bucket wisuda termurah, bunga tangan, bunga meja, bunga meja murah, bunga tangan murah berkualitas, bunga tangan jakarta'
        ]);

        Category::create([
            'parent_id' => '8',
            'level' => '2',
            'name' => 'Hand Bucket',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'hand-bucket',
            'meta_title' => 'Hand Bucket',
            'meta_description' => 'hand bucket premium berkualitas dan harga terjangkau, bunga bucket wisuda termurah, bunga tangan, bunga meja, bunga meja murah, bunga tangan murah berkualitas, bunga tangan jakarta'
        ]);

        Category::create([
            'parent_id' => '9',
            'level' => '3',
            'name' => 'Bunga Tangan',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'bunga-tangan',
            'meta_title' => 'Bunga Bucket',
            'meta_description' => 'kami menyediakan bunga tangan untuk gift kepada orang yang mencitai kamu, berikan secara romantis dengan membeli product bunga tangan berkualitas dari kami'
        ]);
        Category::create([
            'parent_id' => '9',
            'level' => '3',
            'name' => 'Bunga Meja',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'bunga-meja',
            'meta_title' => 'Jual Flower Box - Buket Bunga Box, Bunga Asli Bunda Florist',
            'meta_description' => 'Kado cantik untuk orang terkasih. Bunga box ini cocok untuk kejutan ulang tahun, valentine dan wisuda. Bisa pesan custom. Kami Buka 24 jam'
        ]);
        Category::create([
            'parent_id' => '0',
            'level' => '0',
            'name' => 'Bunga Box',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => '12',
            'icon' => '12',
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'bunga-box',
            'meta_title' => 'Jual Flower Box - Buket Bunga Box, Bunga Asli Bunda Florist',
            'meta_description' => 'Kado cantik untuk orang terkasih. Bunga box ini cocok untuk kejutan ulang tahun, valentine dan wisuda. Bisa pesan custom. Kami Buka 24 jam'
        ]);
        Category::create([
            'parent_id' => '0',
            'level' => '0',
            'name' => 'Aneka Parcel',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => '15',
            'icon' => '15',
            'featured' => '1',
            'top' => '0',
            'digital' => '0',
            'slug' => 'bunga-box',
            'meta_title' => 'Aneka Parcel, Parcel Buah dan Parcel Lebaran Murah',
            'meta_description' => 'sebuah hari raya yang indah dengan memberikan parcel lebaran kepada keluarga atau rekan anda, kami juga menjual parcel buah jakarta buka 24 jam'
        ]);
        Category::create([
            'parent_id' => '13',
            'level' => '1',
            'name' => 'Parcel',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'parcel',
            'meta_title' => 'Aneka Parcel, Parcel Buah dan Parcel Lebaran Murah',
            'meta_description' => 'Jual Parcel Buah, Parcel lebaran, parcel pecah belah online di Bunda Florist buka 24jam, Harga terbaik dan pilihan Parcel Buah terlengkap Pengiriman Cepat Seluruh Indonesia'
        ]);

        Category::create([
            'parent_id' => '14',
            'level' => '2',
            'name' => 'Parcel Buah',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Parcel-Buah',
            'meta_title' => 'Parcel Buah dan Parcel Lebaran Murah',
            'meta_description' => 'sebuah hari raya yang indah dengan memberikan parcel buah kepada keluarga atau rekan anda'
        ]);
        Category::create([
            'parent_id' => '14',
            'level' => '2',
            'name' => 'Parcel lebaran',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Parcel-lebaran',
            'meta_title' => 'Parcel Buah dan Parcel Lebaran Murah',
            'meta_description' => 'sebuah hari raya yang indah dengan memberikan parcel lebaran kepada keluarga atau rekan anda'
        ]);
        Category::create([
            'parent_id' => '14',
            'level' => '2',
            'name' => 'Parcel Pecah Belah',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Parcel-Pecah-Belah',
            'meta_title' => 'Aneka parcel dan Parcel Pecah Belah Murah',
            'meta_description' => 'sebuah hari raya yang indah dengan memberikan parcel Pecah Belah kepada keluarga atau rekan anda'
        ]);


        Category::create([
            'parent_id' => '0',
            'level' => '0',
            'name' => 'Bunga Uang',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => '9',
            'icon' => '9',
            'featured' => '1',
            'top' => '0',
            'digital' => '0',
            'slug' => 'bunga-uang',
            'meta_title' => 'Bunga Uang',
            'meta_description' => 'Kami menjual Bunga Uang murah, bunga bucket uang, bucket uang, bunga uang jakarta, bunga uang asli'
        ]);
        Category::create([
            'parent_id' => '0',
            'level' => '0',
            'name' => 'Semua Kue',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => '10',
            'icon' => '10',
            'featured' => '1',
            'top' => '0',
            'digital' => '0',
            'slug' => 'semua-kue',
            'meta_title' => 'Semua Kue',
            'meta_description' => 'Kami menjual kue, berbagai kue seperti kue ulang tahun, kue coklat, kue decor, kami menjual dengan harga bervariatif tergantung kebutuhan anda, segera pesan sekarang'
        ]);
        Category::create([
            'parent_id' => '19',
            'level' => '1',
            'name' => 'Ulang Tahun',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'semua-kue',
            'meta_title' => 'Semua Kue',
            'meta_description' => 'Kami menjual kue, berbagai kue seperti kue ulang tahun, kue coklat, kue decor, kami menjual dengan harga bervariatif tergantung kebutuhan anda, segera pesan sekarang'
        ]);
        Category::create([
            'parent_id' => '20',
            'level' => '2',
            'name' => 'Kue Ulang Tahun',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Kue-Ulang-Tahun',
            'meta_title' => 'Kue Ulang Tahun',
            'meta_description' => 'Kue ulang tahun - Jual custom kue 3D untuk Ulang tahun. Tersedia dalam berbagai varian bentuk dan rasa. Pengiriman ke seluruh Indonesia hanya di Bunda Florist'
        ]);


        Category::create([
            'parent_id' => '19',
            'level' => '1',
            'name' => 'Romance',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Romance',
            'meta_title' => 'Kue Romance',
            'meta_description' => 'Kue Romance, Kue Romance untuk pernikahan, jual Kue Romance, Kue Romance jakarta'
        ]);
        Category::create([
            'parent_id' => '22',
            'level' => '2',
            'name' => 'Kue Percintaan',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Kue-Percintaan',
            'meta_title' => 'Kue Percintaan',
            'meta_description' => 'Kue Percintaan, Kue Percintaan murah, Kue Percintaan jakarta, kue pernikahan'
        ]);
        Category::create([
            'parent_id' => '19',
            'level' => '1',
            'name' => 'Kue Aneka Rasa',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Kue-Aneka-Rasa',
            'meta_title' => 'Kue Aneka Rasa',
            'meta_description' => 'Kami jual kue dengan berbagai rasa, mulai dari rasa coklat, rasa strawberry dsb'
        ]);
        Category::create([
            'parent_id' => '24',
            'level' => '2',
            'name' => 'Kue Coklat',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Kue-Coklat',
            'meta_title' => 'Kue Coklat',
            'meta_description' => 'Kami jual kue dengan berbagai rasa Kue Coklat, mulai dari rasa coklat, rasa strawberry dsb'
        ]);
        Category::create([
            'parent_id' => '24',
            'level' => '2',
            'name' => 'Kue Strawberry',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Kue-Strawberry',
            'meta_title' => 'Kue Strawberry',
            'meta_description' => 'Kami jual kue dengan berbagai rasa Kue Strawberry, mulai dari rasa Strawberry, rasa strawberry dsb'
        ]);
        Category::create([
            'parent_id' => '24',
            'level' => '2',
            'name' => 'Kue Red Velvet',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Kue-Red-Velvet',
            'meta_title' => 'Kue Red Velvet',
            'meta_description' => 'Kami jual kue dengan berbagai rasa Kue Red Velvet, mulai dari rasa Kue Red Velvet, rasa Kue Red Velvet dsb'
        ]);
        Category::create([
            'parent_id' => '24',
            'level' => '2',
            'name' => 'Kue Starwhite',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Kue-Starwhite',
            'meta_title' => 'Kue Starwhite',
            'meta_description' => 'Kami jual kue dengan berbagai rasa Kue Starwhite, mulai dari rasa Kue Starwhite, rasa Kue Starwhite dsb'
        ]);
        Category::create([
            'parent_id' => '24',
            'level' => '2',
            'name' => 'Kue Rainbow',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Kue-Rainbow',
            'meta_title' => 'Kue Rainbow',
            'meta_description' => 'Kami jual kue dengan berbagai rasa Kue Rainbow, mulai dari rasa Kue Rainbow, rasa Kue Rainbow dsb'
        ]);

        Category::create([
            'parent_id' => '19',
            'level' => '1',
            'name' => 'Aneka Kue Dekorasi',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Aneka-Kue-Dekorasi',
            'meta_title' => 'Aneka Kue Dekorasi',
            'meta_description' => 'Aneka Kue Dekorasi'
        ]);
        Category::create([
            'parent_id' => '30',
            'level' => '2',
            'name' => 'Dekorasi Kue',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Dekorasi-Kue',
            'meta_title' => 'Dekorasi Kue',
            'meta_description' => 'Dekorasi Kue'
        ]);
        Category::create([
            'parent_id' => '0',
            'level' => '0',
            'name' => 'Gift',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => '28',
            'icon' => '28',
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Gift',
            'meta_title' => 'Gift',
            'meta_description' => 'berikan gift untuk orang yang anda cintai, kasih kesempatan untuk mereka agar selalu mencaimu sepanjang hari. segera pesan gift murah di bunda florist'
        ]);
        Category::create([
            'parent_id' => '32',
            'level' => '1',
            'name' => 'Bunda Florist Gifts',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Bunda-Florist-Gifts',
            'meta_title' => 'Bunda Florist Gifts',
            'meta_description' => 'Bunda Florist Gifts'
        ]);
        Category::create([
            'parent_id' => '33',
            'level' => '2',
            'name' => 'Hand Sanitizer',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Hand-Sanitizer',
            'meta_title' => 'Hand Sanitizer',
            'meta_description' => 'Hand Sanitizer'
        ]);
        Category::create([
            'parent_id' => '32',
            'level' => '1',
            'name' => 'Romantic & Sweets',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Bunda-Florist-Gifts',
            'meta_title' => 'Romantic & Sweets',
            'meta_description' => 'Romantic & Sweets'
        ]);
        Category::create([
            'parent_id' => '35',
            'level' => '2',
            'name' => 'Gift Set',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'gift-set',
            'meta_title' => 'Gift Set',
            'meta_description' => 'Gift Set'
        ]);
        Category::create([
            'parent_id' => '35',
            'level' => '2',
            'name' => 'Couple Gift',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Couple-Gift',
            'meta_title' => 'Couple Gift',
            'meta_description' => 'Couple Gift'
        ]);
        Category::create([
            'parent_id' => '35',
            'level' => '2',
            'name' => 'Parfum',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Couple-Gift',
            'meta_title' => 'Parfum',
            'meta_description' => 'Parfum'
        ]);
        Category::create([
            'parent_id' => '0',
            'level' => '0',
            'name' => 'Standing Flowers',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => '7',
            'icon' => '7',
            'featured' => '1',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Couple-Gift',
            'meta_title' => 'Parfum',
            'meta_description' => 'Parfum'
        ]);
        Category::create([
            'parent_id' => '39',
            'level' => '1',
            'name' => 'Krans',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => '7',
            'icon' => '7',
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Krans',
            'meta_title' => 'Aneka Krans',
            'meta_description' => 'Kami menjual aneka krans, yaitu krans duka cita, krans ucapan selemat, dan krans wedding'
        ]);
        Category::create([
            'parent_id' => '40',
            'level' => '2',
            'name' => 'Krans Duka Cita',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Krans-duka-cita',
            'meta_title' => 'Aneka Krans',
            'meta_description' => 'Kami menjual aneka krans, yaitu krans duka cita, krans ucapan selemat, dan krans wedding'
        ]);
        Category::create([
            'parent_id' => '40',
            'level' => '2',
            'name' => 'Krans Ucapan Selamat',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Krans-ucapan-selamat',
            'meta_title' => 'Aneka Krans',
            'meta_description' => 'Kami menjual aneka krans, yaitu krans ucapan selamat, krans ucapan selemat, dan krans ucapan selamat'
        ]);
        Category::create([
            'parent_id' => '40',
            'level' => '2',
            'name' => 'Krans Ucapan Wedding',
            'order_level' => '0',
            'commision_rate' => '0',
            'banner' => null,
            'icon' => null,
            'featured' => '0',
            'top' => '0',
            'digital' => '0',
            'slug' => 'Krans-ucapan-wedding',
            'meta_title' => 'Aneka Krans',
            'meta_description' => 'Kami menjual aneka krans, yaitu krans ucapan wedding, krans ucapan selemat, dan krans ucapan wedding'
        ]);
    }
}
