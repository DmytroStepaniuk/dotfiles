#!/bin/bash

# Додавання функції ltag
ltag() {
  # Отримуємо список тегів та сортуємо їх за спаданням версій
  tags=($(git tag --sort=-v:refname))

  if [ ${#tags[@]} -eq 0 ]; then
    echo "У вас немає жодного тегу."
  else
    # Останній тег
    latest_tag=${tags[0]}
    echo "Перехід на останній тег: $latest_tag"

    # Перехід на останній тег
    git checkout $latest_tag
  fi
}

