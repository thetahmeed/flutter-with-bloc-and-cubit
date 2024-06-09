# Flutter State Management with BLoC

This repository showcases various examples of state management in Flutter using the BLoC (Business Logic Component) architecture. The project is divided into multiple folders, each demonstrating different aspects and use cases of BLoC and Cubit in Flutter applications.

## Table of Contents

- [Introduction](#introduction)
- [Folder Structure](#folder-structure)
- [Examples](#examples)
  - [Basic Cubit and BLoC](#basic-cubit-and-bloc)
  - [BLoC Authentication](#bloc-authentication)
  - [Todo with Cubit and BLoC](#todo-with-cubit-and-bloc)
  - [Weather App with BLoC](#weather-app-with-bloc)
- [Getting Started](#getting-started)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project aims to demonstrate how state management works in Flutter using the BLoC architecture. BLoC helps to separate business logic from the UI, making the code more modular, testable, and maintainable. This repository contains several examples, ranging from basic counter apps to more complex applications like authentication forms and weather apps.

## Folder Structure

```
lib
├── basic_cubit_and_bloc      // How to make a counter app using BLoC and Cubit
├── bloc_auth                 // Using BLoC to validate user input fields
├── todo_cubit_and_bloc       // Applying Cubit and BLoC in a Todo app
└── ui
    └── bloc
        └── bloc_weather_ui   // A simple weather app using BLoC architecture
```

## Examples

### Basic Cubit and BLoC

In the `basic_cubit_and_bloc` folder, you'll find an example of a basic counter app implemented using both Cubit and BLoC. This example helps to understand the fundamental concepts of state management using these two approaches.

### BLoC Authentication

The `bloc_auth` folder contains an example of using BLoC to manage the state of user input fields in an authentication form. It demonstrates how to validate user inputs and manage form submissions using BLoC.

### Todo with Cubit and BLoC

In the `todo_cubit_and_bloc` folder, there's a Todo app example that shows how to implement state management using both Cubit and BLoC. This example illustrates how to handle more complex states and actions within an application.

### Weather App with BLoC

The `lib/ui/bloc/bloc_weather_ui` folder contains a simple weather app that uses the BLoC architecture. This example demonstrates how to fetch and display weather data from an API, showcasing the power and flexibility of BLoC in handling asynchronous operations and API calls.

## Getting Started

To get started with this project, clone the repository and navigate to the desired example folder.

```bash
git clone https://github.com/thetahmeed/flutter-with-bloc-and-cubit.git
cd flutter-with-bloc-and-cubit
```

## Installation

Ensure you have Flutter installed on your machine. For installation instructions, visit the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

## Usage

To run any example, navigate to the respective folder and use the following command:

```bash
flutter run
```

For example, to run the basic counter app:

```bash
cd flutter-with-bloc-and-cubit
flutter run
```

## Contributing

Contributions are welcome! Please fork this repository, make your changes, and submit a pull request. Ensure your code follows the best practices and is well-documented.

---

Feel free to reach out if you have any questions or need further assistance. Happy coding!
