<?php

namespace App\Models;

use App\Enums\StatusEnums;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
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
        'url',
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
    ];

    public static function getFrom()
    {
        return [
            Section::make('Main')
                ->columns(3)
            ->schema([
                TextInput::make('title')
                    ->columnSpanFull()
                    ->required()
                    ->maxLength(255),
                RichEditor::make('description')
                    ->columnSpanFull()
                    ->required()
                    ->maxLength(255),
                FileUpload::make('img')
                    ->image()
                    ->required()
                    ->columnSpanFull(),
                TextInput::make('url')
                    ->required()
                    ->maxLength(255),
                TextInput::make('status')
                    ->required()
                    ->maxLength(255),
                TextInput::make('sort')
                    ->required()
                    ->numeric(),

            ])
        ];
    }
}
