Programa stockholm

El programa stockholm es un script de Python que permite cifrar y renombrar archivos en una carpeta especificada. Además, también cuenta con una opción para revertir la infección y restaurar los archivos a su estado original.

________Requisitos______

Para poder utilizar este programa, es necesario tener instalada la versión 3 de Python. Además, se requiere la instalación de las siguientes librerías:

argparse
hashlib
cryptography

Para instalar estas librerías, se puede utilizar pip ejecutando los siguientes comandos en una terminal:

pip install argparse
pip install cryptography

___________Uso__________

El programa se ejecuta desde una terminal utilizando el siguiente comando:

python stockholm.py [-h] [-v] [-r clave] [-s]

Donde:

-h o --help: muestra la ayuda del programa.
-v o --version: muestra la versión del programa.
-r o --reverse: permite revertir la infección utilizando una clave.
-s o --silent: no muestra ningún output durante la ejecución.

______Funcionamiento_____

Cifrado
Para cifrar y renombrar archivos en una carpeta especificada, se debe ejecutar el programa sin la opción -r. El programa buscará los archivos con las extensiones especificadas en la carpeta ~/infection y los renombrará con la extensión .ft, además de cifrar su contenido utilizando una clave de cifrado especificada en el programa.

Reversión
Para revertir la infección y restaurar los archivos a su estado original, se debe ejecutar el programa con la opción -r seguida de una clave. El programa buscará los archivos con la extensión .ft en la carpeta ~/infection y los desencriptará utilizando la clave especificada en la opción -r, además de renombrarlos a su estado original.

_____Archivos infectados______

El programa cifra y renombra archivos con las siguientes extensiones:

.doc, .docx, .xls, .xlsx, .ppt, .pptx, .pst, .ost, .msg, .eml, .vsd, .vsdx, .txt, .csv, .rtf, .123, .wks, .wk1, .pdf, .dwg, .onetoc2, .snt, .jpeg, .jpg, .docb, .docm, .dot, .dotm, .dotx, .xlsm, .xlsb, .xlw, .xlt, .xlm, .xlc, .xltx, .xltm, .pptm, .pot, .pps, .ppsm, .ppsx, .ppam, .potx, .potm, .edb, .hwp, .602, .sxi, .sti, .sldx, .sldm, .sldm, .vdi, .vmdk, .vmx, .gpg, .aes, .ARC, .PAQ, .bz2, .tbk, .bak, .tar, .tgz, .gz, .7z, .rar, .zip, .backup, .iso, .vcd, .bmp, .png, .gif, .raw, .cgm, .tif, .tiff, .nef, .psd, .ai, .svg