<?php

namespace App;
use App\Tag;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
   protected $fillable = [
       'name',
       'description',
       'image',
       'price',
       'discount'
   ];

   public function tags(){
       return $this->hasMany(Tag::class);
   }
}
