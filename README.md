# 🛒 Flutter Shopping Cart with Bloc & Hive

This is a **Flutter shopping cart** system built using **Flutter Bloc for state management** and **Hive for local storage**. The system supports adding and removing items with **real-time quantity updates**, product listing in a **grid view**, and a **clean UI**.

## 📌 Features

### 🛍️ **Product Catalogue**
- Displays products in a **grid view**.
- Fetches products from a **repository**.
- Supports **image loading** and **formatted pricing**.

### 🛒 **Shopping Cart**
- **Add & remove items** with real-time updates.
- **Quantity adjustments** without removing all instances of an item.
- **Persists cart data** using **Hive** for local storage.
- **Shows total price** dynamically.
- **Handles out-of-stock scenarios**.

### 🚀 **Bloc State Management**
- **ProductBloc** for handling product listing.
- **CartBloc** for managing cart actions efficiently.
- Uses **events & states** for reactive updates.

### 🎨 **Beautiful UI**
- **Material Design** with customized cards.
- **Interactive quantity controls** (increment & decrement).
- **Responsive grid view layout**.

## 🔧 **Setup & Installation**

1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/flutter-cart-bloc.git
   cd flutter-cart-bloc
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the app:
   ```sh
   flutter run
   ```

## 🛠️ **Tech Stack**
- **Flutter**
- **Dart**
- **Flutter Bloc** (State Management)
- **Hive** (Local Storage)
- **Material UI**

## 📸 **Screenshots**
(Add screenshots of the UI here.)

## 🤝 **Contributions**
Contributions are welcome! Feel free to open an issue or submit a PR.

