<?php

namespace Database\Seeders;

use App\Models\OwnerCompany;
use Illuminate\Database\Seeder;

class OwnerCompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        OwnerCompany::create([
            'name' => fake()->company,
            'logo' => null,
            'address' => fake()->streetAddress,
            'postal_code' => fake()->postcode,
            'city' => fake()->city,
            'country_id' => fake()->numberBetween(1, 249),
            'phone' => fake()->phoneNumber,
            'web' => 'https://company.com',
            'email' => fake()->email,
        ]);
    }
}
