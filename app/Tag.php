<?php

namespace App;
use App\Product;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $fillable = ['name', 'product_id'];

    public function products(){
        return $this->belongsTo(Product::class);
    }
}
