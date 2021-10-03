<?php

namespace App\Models;

use App\Models\Employee;
use App\Models\Permission;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Itenary extends Model
{
    use HasFactory;
    protected $table="itenary";
    protected $fillable = [
        'information',
        'daynum',
        'programid'
    ];

}
