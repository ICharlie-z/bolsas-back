<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class bolsas extends Model
{
    protected $table = 'bolsas';
    protected $primaryKey = 'id';
    public function categoria()
    {
        return $this->hasMany(categoria::class);
    }
}
