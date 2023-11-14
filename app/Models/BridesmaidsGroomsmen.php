<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BridesmaidsGroomsmen extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $primaryKey ="id";

    protected $table = "bridesmaids_groomsmen";
}
