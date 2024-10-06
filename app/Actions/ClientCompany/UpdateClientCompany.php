<?php

namespace App\Actions\ClientCompany;

use App\Models\ClientCompany;

class UpdateClientCompany
{
    public function update(ClientCompany $clientCompany, array $data): bool
    {
        return $clientCompany->update($data);
    }
}
