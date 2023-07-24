<p align="center"><a href="http://mini-hrm.fida.me/" target="_blank"><img src="https://i.ibb.co/Bc223Pm/hrm-logo-01.png" width="400" alt="Mini-HRM Logo"></a></p>

<p align="center">
<a href="https://mini-hrm.fida.me"><img src="https://img.shields.io/badge/Preview%20Demo-blue" alt="Preview Demo"></a>
<!-- <a href="#"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a> -->
<a href="#"><img src="https://img.shields.io/badge/version-v1.0.0_beta-blue" alt="Current Version"></a>
<a href="#"><img src="https://wakatime.com/badge/user/76ec1d7f-84a1-4c94-8f9a-076e33961fb1/project/614f526c-5445-4ffa-8ce1-0198d4cf8fd3.svg" alt="License"></a>
</p>

<p align="center">Admin Panel to manage Companies and Employees.</p>

## Table of Contents

- [About](#about)
- [Features](#features)
- [Demo](#demo)
- [Installation](#installation)
- [Usage](#usage)
- [Technologies Used](#technologies-used)
- [License](#license)

## About

<b>Mini-HRM</b> is a web application built using Laravel, aimed at managing companies and their employees efficiently. It provides basic CRUD functionality for companies and employees, along with additional features like email notifications, trash functionality, and a user-friendly front-end theme.

## Features

- Basic Laravel Auth: Administrators can log in to the application.
- Database Seeds: The first user with email admin@admin.com and password "password" is created.
- Companies CRUD: Ability to create, read, update, and delete companies.
- Employees CRUD: Ability to create, read, update, and delete employee records associated with companies.
- Companies DB Table: Fields include Name (required), email, and logo (minimum 100x100).
- Employees DB Table: Fields include First name (required), last name (required), Company (foreign key to Companies), email, and phone.
- Database Migrations: Migrations are used to create the necessary database schemas.
- File Storage: Companies' logos are stored in storage/app/public folder and made accessible to the public.
- Validation: Laravel's validation function using Request classes is implemented.
- Pagination: Laravel's pagination is used to display Companies/Employees lists with 10 entries per page.
- Front-end Theme: Utilized more complicated front-end theme like Tabler.
- Email Notification: Sends an email whenever a new company is entered using Mailgun or Mailtrap.
- Move Deleted Items to Trash: Soft deletion implemented to move deleted items to trash.
- View & Restore Trashed Data: Ability to view and restore trashed data.

## Demo

[Mini-HRM Project Demo](https://mini-hrm.fida.me) <a href="https://mini-hrm.fida.me"><img src="https://img.shields.io/badge/Preview-blue" alt="Preview Demo"></a>

## Installation

1. Clone the repository.
2. Install the required dependencies using composer:

## Usage

Run the development server:

```php artisan serve```

1. Open your browser and navigate to the application.

2. Log in using the provided credentials (admin@admin.com / password).

3. Start managing companies and employees through the user-friendly interface.

## Technologies Used

Laravel - The PHP web application framework.
Tabler - The front-end theme used for an enhanced user experience.
Mailgun or Mailtrap - For email notifications.
Other dependencies (list any additional technologies or packages used).
Contributing
Contributions are welcome! If you find any issues or have suggestions for improvement, feel free to open an issue or create a pull request.

## License

This project is open-sourced software licensed under the MIT license.
