# User Fetch App

A simple Flutter application that fetches user data from a REST API and displays it in a list and detail view.

## Setup Instructions

1.  **Clone the repository:**
    ```bash
    git clone <repository-url>
    cd User_Fetch
    ```

2.  **Install dependencies:**
    Make sure you have Flutter installed. Then run:
    ```bash
    flutter pub get
    ```

3.  **Run the application:**
    Connect a device or start an emulator, then run:
    ```bash
    flutter run
    ```

## Packages Used

-   **[http](https://pub.dev/packages/http):** Used for making asynchronous HTTP requests to fetch user data from the API.

## Assumptions Made

-   **Internet Connection:** The app requires an active internet connection to fetch and display user data.
-   **Data Structure:** The user model assumes the presence of `id`, `name`, `email`, `phone`, `website`, `company`, and `address` (city) fields in the JSON response.
-   **Basic Error Handling:** Simple error handling is implemented to catch network failures or non-200 HTTP status codes, displaying an error message on the screen.

## Screenshots

<p align="center">
  <img width="184" src="https://github.com/user-attachments/assets/1c12a847-c722-4ed2-b149-6d41addbbf33" alt="Detail Screen" />
  <img width="184" src="https://github.com/user-attachments/assets/07a69231-e674-4be2-84cd-bff739acd43d" alt="Home Screen" />
</p>
