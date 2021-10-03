<?php

namespace App\Models;

use App\Models\Employee;
use App\Models\Permission;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class guest_access extends Model
{
    use HasFactory;
    protected $table="guest_access";
    protected $fillable = [
        'information',
        'programid'
    ];

}
