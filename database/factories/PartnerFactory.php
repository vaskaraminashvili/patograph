<?php

namespace Database\Factories;

use App\Enums\StatusEnums;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Partner;

class PartnerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Partner::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence(4),
            'shortDesc' => $this->faker->word(),
            'status' => $this->faker->randomElement(StatusEnums::class),
            'img' => $this->faker->imageUrl(),
            'sort' => $this->faker->numberBetween(1, 40),
            'deleted_at' => $this->faker->dateTime(),
        ];
    }
}
