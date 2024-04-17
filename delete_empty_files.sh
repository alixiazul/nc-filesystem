# Delete Empty Files
# Now we've run a few checks on the filesystem and created a few reports, it's time for a good old spring clean. Let's sort out the mess.
# First things first, you may or may not have noticed that there are a number of empty files.
# Your task is to create a script that finds these empty files and deletes them.
# There are a number of ways you could check if a file is empty. A good option could be using the wc command.
# Keep in mind that the rm command will permanently remove files/directories (not just move them to the bin) so should be used with care. We can recommend the trash-cli tool which makes removing files safer and reversible. You can read more about how not to "rm yourself" here.

#!/bin/bash
directory="./nc-filesystem"

empty_files=$(find "$directory" -type f -empty -delete)
echo "Empty files deleted"
echo $empty_files