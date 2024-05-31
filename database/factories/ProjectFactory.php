<?php

namespace Database\Factories;

use App\Enums\StatusEnums;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Project;

class ProjectFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Project::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence(4),
            'shortDesc' => $this->faker->word(),
            'description' => $this->faker->text(),
            'status' => $this->faker->randomElement(StatusEnums::class),
            'img' => $this->faker->imageUrl(),
            'sort' => $this->faker->numberBetween(1, 50),
            'deleted_at' => $this->faker->dateTime(),
        ];
    }
}