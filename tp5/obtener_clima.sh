
#! /bin/bash


API_KEY="7b3b7aec39a348c89b5213747242206"


if [ -z "$1" ]; then
    echo "Uso: $0 <nombre de la ciudad>"
    exit 1
fi


CIUDAD="$1"

URL="http://api.weatherapi.com/v1/current.json?key=${API_KEY}&q=${CIUDAD}"


RESPUESTA=$(curl -s "${URL}")


if [ -z "$RESPUESTA" ]; then
    echo "Error al obtener los datos del clima. Verifique su conexión a Internet o la clave de API."
    exit 1
fi


TEMPERATURA=$(echo "$RESPUESTA" | jq '.current.temp_c')
HUMEDAD=$(echo "$RESPUESTA" | jq '.current.humidity')
VIENTO=$(echo "$RESPUESTA" | jq '.current.wind_kph')

# Muestra los resultados
echo "Clima actual en ${CIUDAD}:"
echo "Temperatura: ${TEMPERATURA}°C"
echo "Humedad: ${HUMEDAD}%"
echo "Viento: ${VIENTO} kph"
