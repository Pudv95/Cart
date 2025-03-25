# 🛒 Flutter Shopping Cart with Bloc & Hive

This is a **Flutter shopping cart** system built using **Flutter Bloc for state management**, **Hive for local storage** and **Clean Architecture**. The system supports adding and removing items with **real-time quantity updates**, product listing in a **grid view**, and a **clean UI**.

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
   git clone https://github.com/pudv95/cart.git
   cd cart
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

![cataloguePage](https://github.com/user-attachments/assets/df007354-003d-4da7-90a7-92ca34efb3fa)
![cartPage](https://github.com/user-attachments/assets/de0aef3f-7940-4c91-a33c-edcd1ee38650)

