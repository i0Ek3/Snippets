#!/bin/bash
## 
## iso2img.sh
## @i0Ek3(kno30826@gmail.com)
## 2018-08-24 17:26:59
## 
 
#!/bin/bash

# Usage info
usage() {
    cat << EOF
    Usage: ./iso2img.sh ~/target.img ~/source.iso
EOF
}



# $1 is target img, $2 is you iso file

hdiutil convert -format UDRW -o $1 $2


