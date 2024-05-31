<?php

namespace Database\Factories;

use App\Enums\StatusEnums;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Team;

class TeamFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Team::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->name(),
            'surname' => $this->faker->word(),
            'position' => $this->faker->word(),
            'description' => $this->faker->text(),
            'status' => $this->faker->randomElement(StatusEnums::class),
            'img' => $this->faker->imageUrl(),
            'sort' => $this->faker->numberBetween(1, 10),
            'deleted_at' => $this->faker->dateTime(),
        ];
    }
}
