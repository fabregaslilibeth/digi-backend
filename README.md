# To-Do List Application

## Overview

This project is a simple To-Do List application built with Vue.js and GraphQL. It allows users to manage their tasks by adding, updating, and deleting them. The application utilizes GraphQL mutations to interact with the backend server for task management operations.

## Prerequisites
To run this application, you need to have Docker installed on your machine.

## Features

- Handle the backend side to: 
  - Add new tasks to the to-do list . 
  - Mark tasks as completed.
  - Delete tasks from the list.
  - Get all tasks

## Setup

1. Clone the repository:

   ```
   git clone https://github.com/fabregaslilibeth/digi-backend.git
   ```

2. Install dependencies
    ```
    cd digi-backend
    composer install
    ```

3. Copy the .env.example file and rename it to .env:
    ```
    cp .env.example .env
    ```

4. Generate an application key:

    ```
    php artisan key:generate
    ```

5. Update the .env file with your database and other environment configurations.
  Run database migrations and seeders:

    ```
    php artisan migrate --seed
    ```

6. Build the Docker image:
    ```
    docker-compose build
    ```

7. Access the application in your web browser, default is http://digi-backend.test/. You will see the Laravel default welcome page.



For the short documentation on my approach on this project, please [Go here](https://docs.google.com/document/d/1SEbf4IcNomcF6AKVGtjHm45EF1wlcSUljMNwlClhN5g/edit)

