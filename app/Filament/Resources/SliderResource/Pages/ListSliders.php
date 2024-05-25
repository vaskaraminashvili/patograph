<?php

namespace App\Filament\Resources\SliderResource\Pages;

use App\Enums\StatusEnums;
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
                ->modifyQueryUsing(callback: function ($query){
                    return $query->where('status', StatusEnums::published);
                }),
            'unpublished' => Tab::make("Unpublished")->modifyQueryUsing(function ($query){
                return $query->where('status', StatusEnums::unpublished);
            }),
            'draft' => Tab::make("Draft")->modifyQueryUsing(function ($query){
                return $query->where('status', StatusEnums::draft);
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
