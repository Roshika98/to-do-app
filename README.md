# Todo Web App

A simple Todo Web App consisting of a backend service (`todoappservice`) built with NestJS and a frontend application (`todoappweb`) developed using Angular.

## Features

- Create, read, update, and delete (CRUD) todo items
- User authentication and authorization
- Responsive UI built with Angular
- RESTful API powered by NestJS

## Repository Structure

This repository consists of two main projects:

1. **todoappservice (Backend - NestJS)**

   - Provides RESTful APIs for managing todos
   - Uses a database for persistent storage
   - Implements authentication and authorization

2. **todoappweb (Frontend - Angular)**

   - Consumes the APIs provided by `todoappservice`
   - Provides a user-friendly interface to manage todos

## Live Demo

You can view a live demo of the application at:

[http://mydevprototypes.xyz/todo-app](HTTP://mydevprototypes.xyz/todo-app)

## Getting Started

### Clone the Repository

To clone this repository along with its submodules, use the following command:

```sh
git clone --recursive https://github.com/Roshika98/to-do-app.git
```

If you've already cloned the repository but didn't include submodules, run:

```sh
git submodule update --init --recursive
```


## Running with Docker Compose

Create a .env file: Copy the example file .env.example and rename it to .env. Fill in the required details.

To run both backend and frontend using Docker Compose:

```sh
docker compose up --build -d
```

## Contributing

Feel free to contribute by opening issues or submitting pull requests.

