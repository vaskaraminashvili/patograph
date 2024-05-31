<?php

namespace Database\Factories;

use App\Enums\StatusEnums;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Plan;

class PlanFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Plan::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence(4),
            'description' => $this->faker->text(),
            'status' => $this->faker->randomElement(StatusEnums::class),
            'img' => $this->faker->imageUrl(),
            'sort' => $this->faker->numberBetween(1, 40),
            'deleted_at' => $this->faker->dateTime(),
        ];
    }
}
