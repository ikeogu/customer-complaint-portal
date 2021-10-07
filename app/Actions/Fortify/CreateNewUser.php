<?php

namespace App\Actions\Fortify;

use App\Models\Customers;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
        Validator::make($input, [
            'first_name' => ['required', 'string', 'max:255'],
            'last_name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'address' => [ 'string','nullable'],
            'city' => ['string', 'nullable'],
            'current_team_id' => ['default:3'],
            'password' => $this->passwordRules(),
            'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['required', 'accepted'] : '',
        ])->validate();

        $user = User::create([
            'first_name' => $input['first_name'],
            'last_name' => $input['last_name'],
            'email' => $input['email'],
            'phone' => $input['phone'],
            'address' => $input['address'],
            'city' => $input['city'],
            'current_team_id' => 3,
            'password' => Hash::make($input['password']),
        ]);

        $cus = new Customers();
        $cus->user_id = $user->id;
        $cus->branch_id = $input['branch'];
        return $cus->save();
    }
}