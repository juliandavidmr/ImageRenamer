#!/bin/bash

list=(
    "14:35:16=FrAcTaL"
    "?-----Somos dos"
    "13:48:05=Nova"
    "?-----MARIO_BROS :v"
    "13:57:47=LOS LOCOS ADAMS"
    "13:50:18=THC"
    "?-----Legion Hulk"
    "14:03:03=JD"
    "14:33:44=The favorite"
    "14:32:50=SISTEM.Y.A"
    "13:48:48=SAO"
    "14:32:09=Process engineers"
    "13:51:24=mijo"
    "14:37:02=A2cbo"
    "14:00:57=Los pokemon"
    "13:56:52=L y J"
    "14:04:18=Unicode"
    "14:37:33=Castle Rock"
    "13:58:45=Fab 5"
    "14:38:06=los pra"
    "13:38:48=THE BUGS"
    "14:04:47=BonIce"
    "14:41:22=logica2"
    "14:47:35=iloviudetumorro"
    "14:42:32=Lossimpson"
    "14:43:04=THE DARK ENGINEERS ODV & AEM"
    "14:43:25=N3GL1G3NC3"
    "14:44:17=UNITI"
    "14:46:29=The Powers"
    "14:43:49=El trio de dos"
    "14:47:09=DaKo"
    "14:48:53=J.D"
    "14:51:05=Stars"
    "13:59:36=Las pitufas"
    "14:00:04=Irrelevance"
    "14:52:14=thepowerbits"
    "13:39:00=DIKAR"
    "14:56:29=All In One"
    "14:36:52=los steff master"
    "14:57:29=SERVER"
    "14:49:36=champions"
    "14:29:57=ZED"
    "14:04:40=chicho.com"
    "14:27:40=Code-JJ"
    "13:54:43=los aviones"
    "14:27:04=lmentrix"
    "?-----Los Sables"
    "14:26:25=Crash y Mario Bros"
    "13:38:00=Soft-core programmers"
    "15:04:04=La Cosa Mas Dura"
    "13:45:33=Bit Armageddo"
    "14:09:42=TeaMp0isoN"
    "14:11:30=JCVA"
    "14:12:05=GirlsProgrammers"
    "14:12:38=The Fucking Developers"
    "14:40:39=NullPointer"
    "?-----EL Inicio"
    "14:10:52=Cualquiercosa"
    "?-----S&J"
    "14:13:50=8 Bits"
    "14:13:11=THE BEARDS"
    "?-----steam guard"
    "14:19:41=los programadores"
    "14:02:15=CLUB DE LA CANICA"
    "14:16:07=JEDA"
    "14:16:41=xmashi"
    "14:21.56=Aominechin"
    "?-----JA-DA"
    "?-----Sistema Operativo"
    "15:10:08=CUALQUIERA"
    "14:22:25=Martinez"
    "?-----BobyJhon"
    "?-----The Stronger in Java and C++"
    "13:53:41=Hunters of Code"
    "14:24:26=txtpg"
    "14:24:59=Pacman"
    "13:47:17=colaboreme profe"
    "14:25:38=los amazonicos"
    "13:44:16=venga que no es pa eso"
    "13:52:29=Javamos"
)

# Busca una imagen por fecha. Retorna el nombre del grupo
# si este es encotrado.
# Parametros:
#   $1  Fecha. p.ej: 13:52:29
# Ejemplo:
#   $ findDateReturnName "13:52:29"
#   $ Javamos
function findDateReturnName {
    for i in "${list[@]}"
    do
        IFS='= ' read -r -a array <<< "$i"
        if [ "${array[0]}" == "$1" ]; then
          echo "${array[1]}-${array[2]}-${array[3]}-${array[4]}"        
        fi
    done
}

function changeImage() {    
    for f in *.JPG; do
        capturedate=$(identify -format "%[EXIF:DateTime]\n" $f | cut -f2 -d' ' | cut -f1 -d'.')
        # echo "Buscando $capturedate..."
				nombre="$(findDateReturnName $capturedate)"
				if [ $nombre ]; then
					echo "Encontrado '$nombre' - '$capturedate'"
					rename $f $nombre $f
				fi				
    done
}

changeImage
# echo $(findDateReturnName "13:52:29")
