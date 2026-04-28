#!/usr/bin/bash
echo "bash" > ~/output.txt
echo "" >> ~/output.txt
echo "###########" >> ~/output.txt
echo "LIST BLOCK DEVICES" >> ~/output.txt
echo "" >> ~/output.txt
lsblk >> ~/output.txt
echo "##########" >> ~/output.txt
echo "FILESYSTEM FREE SPACE STATUS" >> ~/output.txt
echo "" >> ~/output.txt
df -h >> output.txt
echo "###########" >> ~/output.txt
