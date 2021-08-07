<?php

use App\Models\Brand;
use Illuminate\Database\Seeder;

class BrandTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Brand::create([
            'name' => 'Bunga Bunda Florist',
            'logo' => '1',
            'top' => '1',
            'slug' => 'bunga-bunda-florist',
            'meta_title' => 'Toko Bunga Bunda Florist Indonesia',
            'meta_description' => 'Toko bunga papan murah di jakarta, bunga papan ucapan selamat, bunga papan, papan bunga, bunga papan murah terbaik, bunga papan jakarta, toko bunga, toko bunga papan, toko bunga terbaik',
        ]);
        Brand::create([
            'name' => 'Product Penjual',
            'logo' => '25',
            'top' => '1',
            'slug' => 'product-penjual',
            'meta_title' => 'Toko Bunga Bunda Florist Indonesia',
            'meta_description' => 'Toko bunga papan murah di jakarta, bunga papan ucapan selamat, bunga papan, papan bunga, bunga papan murah terbaik, bunga papan jakarta, toko bunga, toko bunga papan, toko bunga terbaik',
        ]);
    }
}
