<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Package;

class Categorie extends Model
{
    use HasFactory;
    protected $table="categories";
    protected $fillable = [
        'name',
        'image',
        'icon',
        'keywords',
        'status'
    ];

    public function packages()
    {
        return $this->hasMany(Package::class);
    }
}
