<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Categorie;
use App\Models\Program;
class Package extends Model
{
    use HasFactory;
    protected $table = 'packages';
    protected $fillable = [
        'name',
        'days',
        'image',
        'categorie_id',
        'aval_from',
        'aval_to',
        'destination',
        'status'
    ];
    public function category()
    {
        return $this->belongsTo(Categorie::class, 'categorie_id');
    }
    public function programs()
    {
        return $this->hasMany(Program::class);
    }
}
