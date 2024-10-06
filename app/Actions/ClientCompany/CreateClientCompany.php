<?php

namespace App\Actions\ClientCompany;

use App\Models\ClientCompany;
use Illuminate\Support\Facades\DB;

class CreateClientCompany
{
    public function create(array $data): ClientCompany
    {
        return DB::transaction(function () use ($data) {
            $clientCompany = ClientCompany::create($data);

            return $clientCompany;
        });
    }
}
