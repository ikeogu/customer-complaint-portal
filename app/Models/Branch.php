<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    use HasFactory;

    protected $fillable = [
     'name','address','city','state','phone','email'
    ];

    public function customers(){
        return $this->hasMany(Customers::class);
    }

    public function complaints(){
        return $this->hasMany(Complaint::class);
    }
    public function manager(){
        return $this->hasOne(Manager::class);
    }
}