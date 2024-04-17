# Find Cat Pictures
# Over the years, Northcoders has gathered a wonderful selection of cat pictures. However, they are saved all over the place and are not named in a helpful manner.
# Having said that, these cat pictures are the only jpeg files in our file system which could be useful when locating them!
# Your job is to create a cat-pics.txt file that lists the file paths to each cat picture. For example:
# > /cat-pics.txt

# ./nc-filesystem/stuff/1.jpeg
# etc...
# etc...

# Make sure you only store the information about files contained within the nc-filesystem, not the nc-filesystem-backup!

#!/bin/bash
directory="./nc-filesystem"
file="cat-pics.txt"

find "$directory" -type f -iname "*.jpeg" > "$file"
echo "Cat pictures located at cat-pics.txt"