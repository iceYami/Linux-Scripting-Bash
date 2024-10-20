echo "Contenedores Docker en ejecución:"

docker ps

read -p "Introduce el contenedor que quieres detener: " CONTENEDOR_ID

docker stop "$CONTENEDOR_ID"

if [ $? -eq 0 ]; then

    echo " $CONTENEDOR_ID se ha detenido."

else

    echo "Error."
fi
