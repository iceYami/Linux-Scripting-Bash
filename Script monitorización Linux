SERVICIOS=("ssh" "apache2" "mysql" "postgresql" "nginx" "bind9" "cron")

echo "Introduce los servicios para monitorear (separados por espacios y ENTER para finalizar):"

read -a nuevos_servicios

SERVICIOS+=("${nuevos_servicios[@]}")

for servicio in "${SERVICIOS[@]}"; do

    if systemctl is-active --quiet "$servicio"; then

        echo " $servicio está funcionando. "

    else

        echo " $servicio está caído."

    fi

done
