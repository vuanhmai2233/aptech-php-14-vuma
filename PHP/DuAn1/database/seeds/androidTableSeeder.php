<?php

use Illuminate\Database\Seeder;

class androidTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for($i=0;$i<10;$i++){
            DB::table('android')->insert([
                'solan' =>'So lan thu'.$i
            ]);
        }
    }
}
