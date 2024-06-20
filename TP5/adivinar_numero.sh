numAdivinar=$((1 + RANDOM % 100))

echo "Este es el juego de adivinar el número!"

while true; do
  read -p "Adivina un número entre 1 y 100: " num

  if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Ese número no es válido, crack."
    continue
  fi

  if ((num < 1 || num > 100)); then
    echo "DICE ENTRE 1 Y 100. Intenta de nuevo."
    continue
  fi

  if ((num < numAdivinar)); then
    echo "Más grande"
  elif ((num > numAdivinar)); then
    echo "Más chiquito"
  else
    echo "¡ADIVINASTE!"
    break
  fi
done
