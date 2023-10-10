<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Evenement extends Model
{
    use HasFactory;
    protected $table = 'evenements';

        protected $casts = [
            'links' => 'json',
            'gallery' => 'json',
        ];

}
