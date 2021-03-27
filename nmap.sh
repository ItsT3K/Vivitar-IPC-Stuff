#nmap script to get information from Vivitar IP Cameras
#
#The last digits of the IP addresses have been redacted
echo "nmapping Camera 1..."
nmap -T4 -O -A -v 192.168.1.x > Camera1.txt
echo "nmapping Camera 2..."
nmap -T4 -O -A -v 192.168.1.x > Camera2.txt
echo "nmapping Camera 3..."
nmap -T4 -O -A -v 192.168.1.x > Camera3.txt
echo "nmapping Camera 4..."
nmap -T4 -O -A -v 192.168.1.x > Camera4.txt
echo "nmapping Camera 5..."
nmap -T4 -O -A -v 192.168.1.x > Camera5.txt
echo "Putting all results into one file"
cat Camera1.txt Camera2.txt Camera3.txt Camera4.txt Camera5.txt > output.txt
rm Camera1.txt Camera2.txt Camera3.txt Camera4.txt Camera5.txt
echo "All results are in output.txt"
