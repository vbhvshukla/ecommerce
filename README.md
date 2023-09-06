# E-commerce App with Flutter and Firebase
![image](https://github.com/vbhvshukla/ecommerce/assets/51282485/72fa72b0-2b7e-4326-bd34-6e74c981088f)
![image](https://github.com/vbhvshukla/ecommerce/assets/51282485/c33c9499-0a5c-44ea-a12c-459e72a080bb)
![resized](https://github.com/vbhvshukla/ecommerce/assets/51282485/c87dd2f6-a56c-4797-8d26-d3da15d8cf92) 


## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)

## Overview

Created a feature-rich eCommerce cross-platform app using the following tech stack: Flutter and Dart for frontend development, Firebase for backend and database integration, GetX for state management, and VelocityX for rapid UI prototyping and styling.

## Features

List the main features of your E-commerce app:

- User authentication (Firebase Auth)
- Browse and search products
- Add products to cart
- Checkout and payment processing (In process)
- Order history
- User profile management
- Real-time updates using Firebase Realtime Database or Firestore
- Product reviews and ratings
- Wishlist functionality

## Getting Started

Setup Flutter, Dart, and Firebase along with Android/iOS emulator and run the main.dart file.

### Prerequisites

- Flutter SDK (version X.X.X)
- Firebase project with authentication and Firestore setup
- Android Studio or Visual Studio Code with Flutter plugins

### Installation

Provide step-by-step instructions on how to install and set up your app:

1. Clone this repository:

git clone https://github.com/vbhvshukla/ecommerce.git


2. Change the directory to the project folder:

cd your-repo


3. Install Flutter dependencies:

flutter pub get


4. Configure Firebase:
- Create a Firebase project on the [Firebase Console](https://console.firebase.google.com/).
- Put the google-services.json in the android folder of your main project directory.

5. Run the app:


## Usage

- Splash Screen: When you launch the app, you'll be greeted by a stylish splash screen that introduces you to the shopping world.

- Login or Signup: If you're not already logged in, you'll be prompted to either log in with your existing credentials or create a new account by signing up.

- Home Screen: Upon successful login or signup, you'll land on the home screen. Here, you have several options:

- Product Page: You can directly go to the product page to browse and purchase products.

- Categories: Explore our wide range of categories to find products that match your interests and needs.

- Cart: View and manage the items in your cart. You can proceed to checkout from here (Note: Checkout feature is a work in progress).

- User Profile: Access your user profile where you can see your information and change it as needed. You can also add a profile picture to personalize your account.


## Project Structure

Briefly describe the organization of your project's code. For example:

- `lib/`: Contains the main Flutter app code.
- `consts/`: Contains every constants.
- `controllers/`: Contains every controller.
- `models/`: Contains all data models.
- `common_widgets/`: Custom widgets.
- `views/`: Custom different views/screens.
- `services/`:Handles restore services/JSON.
- ...

