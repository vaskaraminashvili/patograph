<?php

namespace App\Http\Controllers;

use App\Models\Partner;
use App\Models\Plan;
use App\Models\Project;
use App\Models\Service;
use App\Models\Slider;
use App\Models\Team;

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

        $services = Service::query()
            ->latest('id')
            ->limit(6)
            ->get();
        $data['services'] = $services;

        $team = Team::query()
            ->latest('id')
            ->limit(6)
            ->get();
        $data['team'] = $team;

        $projects = Project::query()
            ->latest('id')
            ->limit(6)
            ->get();
        $data['projects'] = $projects;

        $partners = Partner::query()
            ->latest('id')
            ->limit(6)
            ->get();
        $data['partners'] = $partners;

        $plans = Plan::query()
            ->latest('id')
            ->limit(3)
            ->get();
        $data['plans'] = $plans;


        return view('welcome', compact('data'));
    }
}
