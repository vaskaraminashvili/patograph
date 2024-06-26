<?php

namespace App\Models;

use App\Enums\StatusEnums;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title',
        'description',
        'status',
        'icon',
        'img',
        'sort',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'status' => StatusEnums::class,
        'deleted_at' => 'timestamp',
    ];


    public static function getForm()
    {
        return [
            TextInput::make('title')
                ->required()
                ->maxLength(255),
            TextInput::make('status')
                ->required()
                ->maxLength(255),
            TextInput::make('icon')
                ->required()
                ->maxLength(255),
            FileUpload::make('img')
                ->image()
                ->required()
                ->columnSpanFull(),
            TextInput::make('sort')
                ->required()
                ->numeric(),
        ];
    }
}
