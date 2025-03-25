#!/bin/bash

folders=(
    "core/error"
    "core/usecases"
    "core/network"
    "features/cart/data/models"
    "features/cart/data/repositories"
    "features/cart/domain/entities"
    "features/cart/domain/repositories"
    "features/cart/domain/usecases"
    "features/cart/presentation/bloc"
    "features/cart/presentation/pages"
    "features/cart/presentation/widgets"
    "features/catalogue/data/models"
    "features/catalogue/data/repositories"
    "features/catalogue/domain/entities"
    "features/catalogue/domain/repositories"
    "features/catalogue/domain/usecases"
    "features/catalogue/presentation/bloc"
    "features/catalogue/presentation/pages"
    "features/catalogue/presentation/widgets"
    "routes"
)

for folder in "${folders[@]}"; do
    mkdir -p "lib/$folder"
done

echo "Folder structure created successfully!"
