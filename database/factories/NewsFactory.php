<?php

namespace Database\Factories;

use App\Enums\StatusEnums;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\News;

class NewsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = News::class;

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
            'img' => $this->faker->text(),
            'sort' => $this->faker->numberBetween(1, 100),
            'deleted_at' => $this->faker->dateTime(),
        ];
    }
}
