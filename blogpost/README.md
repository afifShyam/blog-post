```markdown
# Blog Post List Web App

A modern web application for managing and displaying blog posts. The app supports CRUD (Create, Read, Update, Delete) operations for blog posts and includes a feature to view and search users in a table format.

## Features

- **CRUD Operations for Blog Posts**: Create, read, update, and delete blog posts.
- **User Table**: View a list of users with detailed information.
- **Search Functionality**: Search for users by name, username, email, phone, website, or company name.
- **API Sources**: Api is sources from (https://jsonplaceholder.typicode.com/).

## Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) 3.0 or later
- [Dart](https://dart.dev/get-dart)
- [Flutter Web Support](https://flutter.dev/docs/get-started/web)

## Usage

- **Home Page**: Displays a grid of blog posts with options to read more or delete posts or Update.
- **Update Post**: Click on a post to view and Ciew Comments.
- **User Table Page**: Accessed via the menu, it displays user information in a searchable table format.

### Searching Users

To search for a user:
1. Enter search terms in the search box located at the top-right corner of the user table page.
2. The table will dynamically filter to show matching results.

## Code Structure

- `lib/domain/model/`: Contains data models for blog posts and users.
- `lib/infrastructure/`: Provides services and utilities for data handling.
- `lib/application/`: Contains business logic and state management.
- `lib/presentation/`: Includes UI components and screens.


## Acknowledgements

- [Flutter](https://flutter.dev) for the framework.
- [Dart](https://dart.dev) for the language.
```