#!/bin/bash

grep "Listen $1" /etc/apache2/ports.conf.save > /dev/null

if [ "$?" -ne "0" ]

then

        echo "Listen no encontrado"

        echo "Listen $1" >> /etc/apache2/ports.conf.save

        echo "Listen añadido al fichero"

fi



