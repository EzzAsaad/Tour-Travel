<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Package;
class Program extends Model
{
    use HasFactory;
    protected $table = 'programs';

    protected $fillable = [
        'name',
        'shortName',
        'desc',
        'shortDesc',
        'categorie_id',
        'package_id',
        'images',
        'videos',
        'status',
        'guestaccessdesc',
        'tourrules'
    ];

    public function package()
    {
        return $this->belongsTo(Package::class);
    }
}
