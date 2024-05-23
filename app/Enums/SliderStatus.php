<?php

namespace App\Enums;

enum SliderStatus: string
{
    case published = 'published';
    case unpublished = 'unpublished';
    case draft = 'draft';

    public function getColor(): string
    {
        return match ($this){
            self::published => 'success',
            self::unpublished => 'warning',
            self::draft => 'info',
        };
    }
}
