# ImageRenamer
Renombrar imágenes desde una entrada dinámica basada en hora de captura y nombre. 

## Ejecución
```bash
$ git clone https://github.com/juliandavidmr/ImageRenamer
$ cd ImageRenamer
$ chmod -x bin.sh

# Editar las entradas definidas en bin.sh
$ sh bin.sh
Encontrado 'venga-que-no-es' - '13:44:16'
Encontrado 'colaboreme-profe--' - '13:47:17'
Encontrado 'Castle Rock--' - '14:37:33'
...
```

## Funcionamiento
Se toma cada una de las imagenes jpg espeficadas en la carpeta donde se ejecutó `bin.sh`, posteriormente se obtiene la fecha de captura de la imagen y se renombra por el _nombre_ especificado en la [entrada](https://github.com/juliandavidmr/ImageRenamer/blob/master/bin.sh#L3).
El patrón de entrada es `HH:MM:SS=Nombre`, p.ej: `14:37:33=Castle Rock`.


Licencia MIT
