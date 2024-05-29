<?php

namespace App\Http\Controllers;

use App\Models\Slider;

class HomeController extends Controller
{
    public function __invoke()
    {
        $data = [];
        $slides = Slider::query()
            ->latest('id')
            ->limit(4)
            ->get();
        $data['slides'] = $slides;
        return view('welcome', compact('data'));
    }
}
