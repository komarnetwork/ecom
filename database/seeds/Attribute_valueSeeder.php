<?php

use App\AttributeValue;
use Illuminate\Database\Seeder;

class Attribute_valueSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '30x30',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '30x50',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '50x50',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '50x80',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '50x100',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '100x100',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '100x150',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '100x200',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '150x200',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '200x250',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '200x300',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '1',
            'value' => '250x300',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);

        AttributeValue::create([
            'attribute_id' => '3',
            'value' => 'Pagi (08:00 - 13:00)',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '3',
            'value' => 'Siang (13:00 - 18:00)',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
        AttributeValue::create([
            'attribute_id' => '3',
            'value' => 'Malam (18:00 - 23:00)',
            'attribute_value_name' => '',
            'color_code' => null,
        ]);
    }
}
