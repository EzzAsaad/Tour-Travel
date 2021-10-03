<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Program;
class Booking extends Model
{
    use HasFactory;
    protected $table = 'bookings';
    protected $fillable = [
        'user_id', 
        'name',
        'images',
        'country_id',
        'age',
        'city_id',
        'address',
        'IdNum',
        'program_id',
        'status'
    ];

    public function program()
    {
        return $this->belongsTo(Program::class);
    }
}
