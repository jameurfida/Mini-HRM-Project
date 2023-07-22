<?php

namespace App\Providers;

// use Illuminate\Support\Facades\Gate;

use Illuminate\Auth\Access\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Auth;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        //
    ];

    /**
     * Register any authentication / authorization services.
     */
    public function boot(): void
    {
        /**
         * 1. create_post
         * 2. edit_post
         * 3. delete_post
         */

        // Gate::define('create_employee', function(){
        //     return Auth::user()->is_admin;
        // });

        // Gate::define('edit_employee', function(){
        //     return Auth::user()->is_admin;
        // });

        // Gate::define('delete_employee', function(){
        //     return Auth::user()->is_admin;
        // });
    }
}
