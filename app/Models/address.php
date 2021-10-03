<?php

namespace App\Models;



use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class address extends Model
{
    use HasFactory;
    protected $table ="address";
    protected $fillable = ['user_id','new_address','area_id','build_number','floor_number','flat_number','lat','long'];
}
