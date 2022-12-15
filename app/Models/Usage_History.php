<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Usage_History extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'usage_history';

    /**
    * The database primary key value.
    *
    * @var string
    */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['nama', 'date', 'time'];

    
}
