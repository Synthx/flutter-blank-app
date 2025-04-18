# Flutter blank app

A flutter blank app project created supporting both web and mobile

## Getting Started

This project contains the minimal implementation required to create a new 
library or project. The repository code is preloaded with some basic components
like basic app architecture, app theme, constants and required dependencies to 
create a new project. By using this project code as standard initializer, 
we can have same patterns in all the projects that will inherit it.
This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

## How to Use

**Step 1:** Clone the current repository on your computer

**Step 2:** Go to project root and execute the following command in console to get the required dependencies:
```shell
flutter pub get
```

**Step 3:** This project uses `build_runner` library that works with code generation, execute the following command to generate files:
```shell
dart run build_runner build --delete-conflicting-outputs
```

## Blank app features:

* Http client
* Dependency Injection
* Routing
* Deep linking
* State management
* Code Generation
* Internalization
* Logging
* Splash Screen
* Crashlytics
* Environment specific configuration

### Up-Coming features:

* Dark mode

### Libraries & Tools Used

* [Http Client](https://pub.dev/packages/dio)
* [Routing](https://pub.dev/packages/go_router)
* [State Management](https://pub.dev/packages/flutter_bloc)
* [Json Serialization](https://pub.dev/packages/json_serializable)
* [Code Generation](https://pub.dev/packages/freezed)
* [Dependency Injection](https://pub.dev/packages/get_it)

### Folder Structure

Here is the folder structure we have been using in this project

```
lib/
|- core/
|- data/
|- l10n/
|- screen/
|- theme/
|- widget/
|- app.dart
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- constants - All the application level constants are defined in this directory with-in their respective files. This directory contains the constants for `theme`, `dimentions`, `api endpoints`, `preferences` and `strings`.
2- data - Contains the data layer of your project, includes directories for local, network and shared pref/cache.
3- stores - Contains store(s) for state-management of your application, to connect the reactive data of your application with the UI.
4- ui — Contains all the ui of your project, contains sub directory for each screen.
5- util — Contains the utilities/common functions of your application.
6- widgets — Contains the common widgets for your applications. For example, Button, TextField etc.
7- routes.dart — This file contains all the routes for your application.
8- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

### Code Generation

This project use freezed for generating immutable classes, please use the following live templates :

#### Immutable Object

````dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/$FILE_NAME$.freezed.dart';

@freezed
sealed class $NAME$ with _$$$NAME$ {
  const factory $NAME$({
    $END$
  }) = _$NAME$;
}
````

#### Json Serializable Object

````dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/$FILE_NAME$.freezed.dart';
part 'generated/$FILE_NAME$.g.dart';

@freezed
sealed class $NAME$ with _$$$NAME$ {
  const factory $NAME$({
    $END$
  }) = _$NAME$;
  
  factory $NAME$.fromJson(Map<String, Object?> json) => _$$$NAME$FromJson(json);
}
````

## Code quality

There is a strong focus on code quality and maintainability in this project, to ensure quality we have 2 tools :

### Formatter

```shell
dart format .
```

### Linter

```shell
flutter analyze
```
