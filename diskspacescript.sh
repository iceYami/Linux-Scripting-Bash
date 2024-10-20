min_esp_libre=1000

echo "Espacio en disco utilizado:"

df -h

echo "Top directorios más pesados:"

du -ah / | sort -rh | head -n 10

ESPACIO_LIBRE=$(df -m --output=avail / | tail -n 1)

if [ $ESPACIO_LIBRE -lt $MIN_ESPACIO_LIBRE ]; then

  echo "Hay poco espacio libre: $ESPACIO_LIBRE MB"

fi
