<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\categoryes;
use Illuminate\Database\Eloquent\SoftDeletes;

class todos extends Model
{
    use HasFactory, SoftDeletes;
    protected $guarded = [];

    public function category()
    {
        return $this->belongsTo(categoryes::class, 'categoryes_id');
    }
}
