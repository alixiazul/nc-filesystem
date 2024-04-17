# NC Filesystem

Check if a Staff File Exists

Within the very helpfully named staff folder in the nc-filesystem directory in the repo, there are a number of staff files. Your task is to create a script that checks if a file for a given staff ID number is present in the directory.

All staff files follow the same naming convention of nc-ID.json, such as the file nc-001.json.

Your script should print out a suitable message to the terminal indicating if the staff file can be found.

While you could hard-code the ID of the staff member that you wish to search for within the script, it would be nicer (and much more reusable) if you could pass an ID number to the script. For example:

$ ./YOUR_SCRIPT_HERE.sh "001"
prints "Staff file found" to the terminal
