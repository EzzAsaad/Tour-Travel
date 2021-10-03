<?php

namespace App\Models;

use App\Models\Employee;
use App\Models\Permission;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class price_includes extends Model
{
    use HasFactory;
    protected $table="price_includes";
    protected $fillable = [
        'information',
        'programid'
    ];

}
