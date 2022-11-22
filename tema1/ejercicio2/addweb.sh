#!/bin/bash

echo "Introduce el titulo:"
read titulo

echo "Introduce la cabecera:"
read cabecera

echo "Introduce el mensaje:"
read mensaje

echo "Introduce el nombre del archivo html que se va a generar:"
read arch   

archivo="$arch.html"

echo "<html><title>$titulo</title><header>$cabecera</header><section>$mensaje</section></html>">/var/www/html/"$archivo"
