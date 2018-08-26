#!/bin/bash
## 
## pwdIterator.sh
## @i0Ek3(kno30826@gmail.com)
## 2018-08-25 23:01:57
## 
 
#!/bin/bash

echo -n "Which way you want to encrypt(md5 sha1 sha256 sha512): "
read encrypt
echo -n "Which type you want to convert(file or str): "
read type
echo -n "Please input your full path file's name or str(file like this: ~/etc/pwd.txt and str like this: "abc")"
read contents
#echo -n "Please input times you want to iterator: "
#read time
echo "Okay, thank you for your patient, please wait a moment..."

# macOS
# sha support 1 (default), 224, 256, 384, 512, 512224, 512256

function calculateHash() 
{
    if [ $type == "file" ]
    then 
        if [ $encrypt == "md5" ]
        then
            v1 = $(md5 $contents)
            echo v1 
        elif [ $encrypt == "sha1" ]
            v2 = $(shasum -a 1 $contents)
            echo v2 
        elif [ $encrypt == "sha256" ]
            v3 = $(shasum -a 256 $contents)
            echo v3
        else
            echo "Wrong input, exitting..."
        fi
    else
        if [ $encrypt == "md5" ]
        then
            echo -n $contents | md5 | awk '{print $contents}'
        elif [ $encrypt == "sha1" ]
            echo -n $contents | shasum -a 1 | awk '{print $contents}'
        elif [ $encrypt == "sha256" ]
            echo -n $contents | shasum -a 256 | awk '{print $contents}'
        else
            echo "Wrong input, exitting..."
        fi
    fi
}


#for (( times = 1; times <= $time; times++ ))
#do
#    ret = $(echo -n $1 | md5 | awk '{print $1}')
#    echo -n $ret | md5 | awk '{print $ret}'
#done


