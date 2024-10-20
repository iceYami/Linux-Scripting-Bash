read -p "Introducir ruta para realizar backup: " DIRECTORIO

read -p "Introducir ruta de destino: " DESTINO

if [ ! -d "$DESTINO" ]; then
    echo "El destino '$DESTINO' no existe. Creando."
    mkdir -p "$DESTINO"
fi

FECHA=$(date +"%Y%m%d")
NOMBRE="copia_de_seguridad_$FECHA.tar.gz"

tar -czvf "$DESTINO/$NOMBRE" "$DIRECTORIO"

if [ $? -eq 0 ]; then
    echo "Backup realizado: $DESTINO/$NOMBRE"
else
    echo "Error"
fi
