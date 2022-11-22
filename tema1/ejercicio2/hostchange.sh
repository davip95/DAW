#!/bin/bash

hosts_archivo="./etc/hosts"

echo "Introduce el nuevo host: "
read host_nuevo

echo "Introduce la nueva IP: "
read IP_nueva

#Para comprobar que no existe el nuevo dominio:

if grep -q -w "$host_nuevo" "$hosts_archivo"

then 
        echo "El dominio introducido ya existe"

else
        echo "$IP_nueva $host_nuevo" >> "$hosts_archivo"
        echo "Dominio e IP añadidos al fichero hosts"

fi

