<?php

namespace Database\Seeders;

use App\Models\OwnerCompany;
use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;

class ProductionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'email' => config('auth.admin.email'),
            'name' => config('auth.admin.name'),
            'phone' => '',
            'job_title' => 'Owner',
            'avatar' => null,
            'password' => bcrypt(config('auth.admin.password')),
            'remember_token' => null,
        ])->assignRole(Role::firstWhere('name', 'admin'));

        OwnerCompany::create([
            'name' => '',
            'logo' => null,
            'address' => '',
            'postal_code' => '',
            'city' => '',
            'country_id' => null,
            'phone' => '',
            'web' => '',
            'email' => '',
        ]);
    }
}
