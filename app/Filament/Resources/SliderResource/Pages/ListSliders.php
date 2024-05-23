<?php

namespace App\Filament\Resources\SliderResource\Pages;

use App\Enums\SliderStatus;
use App\Filament\Resources\SliderResource;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;

class ListSliders extends ListRecords
{
    protected static string $resource = SliderResource::class;

    public function getTabs(): array
    {
        return [
            'all' => Tab::make("All Slides"),
            'published' => Tab::make("Published")
                ->modifyQueryUsing(function ($query){
                    return $query->where('status', SliderStatus::published);
                }),
            'unpublished' => Tab::make("Unpublished")->modifyQueryUsing(function ($query){
                return $query->where('status', SliderStatus::unpublished);
            }),
            'draft' => Tab::make("Draft")->modifyQueryUsing(function ($query){
                return $query->where('status', SliderStatus::draft);
            }),
        ];
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
