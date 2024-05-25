<?php

namespace Database\Factories;

use App\Enums\StatusEnums;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Service;

class ServiceFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Service::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence(4),
            'description' => $this->faker->text(),
            'status' => StatusEnums::class,
            'icon' => 'heroicon',
            'img' => $this->faker->text(),
            'sort' => $this->faker->numberBetween(0, 100),
            'deleted_at' => $this->faker->dateTime(),
        ];
    }
}
