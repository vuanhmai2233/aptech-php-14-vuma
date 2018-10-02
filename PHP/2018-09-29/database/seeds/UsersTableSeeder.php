<?php

use Illuminate\Database\Seeder;
use App\user;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();
        for ($i = 0; $i < 5; $i++) {
            //DB::table('users')->insert  
            user::create([
                'name' => $faker->Text,
                'email' => $faker->Email,
                'password' => bcrypt(str_random(10)),
                'dob'=>$faker->date,
                'address'=>$faker->address,
                'phone'=>$faker->e164PhoneNumber,
            ]);
        }
    }
}
