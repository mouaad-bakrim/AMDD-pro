<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Specialite extends Model
{
    use HasFactory;
    protected $table = 'specialites';

    protected $fillable = ['comite_id','specialite_name', 'status']; 
}
