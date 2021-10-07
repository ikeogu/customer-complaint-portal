<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Complaint extends Model
{
    use HasFactory;

    protected $fillable = [
        'title','message','reviewed','customer_id','branch_id'
    ];
    public function customers(){
        return $this->belongsTo(Customers::class);
    }
    public function branch()
    {
        return $this->belongsTo(Branch::class);
    }
}