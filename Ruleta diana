#!/bin/bash
echo "Hola, soy iceYami"
read -p "¿Quieres continuar? (s/n): " respuesta
if [ "$respuesta" == "n" ]; then
 echo "¡Hasta luego!"
 exit 0
elif [ "$respuesta" == "s" ]; then
 echo "Encantada de saludarte, te doy la bienvenida a mi perfil. Dispara."
 bala=$(($RANDOM % 2))
 if [ $bala -eq 1 ]; then
 echo "Chik, chik, ¡Bang! ¿Has dado en la diana?" 
 acierto=$(($RANDOM % 100))
 echo "Porcentaje de acierto: $acierto%"
 if [ $acierto -lt 80 ]; then
 echo "Mejor suerte la próxima vez, nos vemos en otra ocasión."
 else
 echo "Soy toda oídos"
 fi
 else
 echo "Hoy no se ha disparado ninguna bala. Nos veremos en otra ocasión."
 fi
else
 echo "¿No quieres jugar según las reglas?"
fi
