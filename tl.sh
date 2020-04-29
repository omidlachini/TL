#!/bin/bash



if [ ! -d $HOME/TrueLayer ]

then

mkdir $HOME/TrueLayer
touch $HOME/TrueLayer/TLTest.txt
echo -e "Time of when script has been run:" `date +%T` "\n" >> $HOME/TrueLayer/TLTest.txt
echo -e "Name of script file:" $0 "\n" >> $HOME/TrueLayer/TLTest.txt
echo -e "List of every file and folder name present in the running folder" `ls -a` "\n" >> $HOME/TrueLayer/TLTest.txt
echo -e "Public IP:" `dig @resolver1.opendns.com A myip.opendns.com +short` "\n"  >> $HOME/TrueLayer/TLTest.txt
echo -e "PID:"$$ "Run by:" $USER "\n" >> $HOME/TrueLayer/TLTest.txt
else
echo -e "##\n" >> $HOME/TrueLayer/TLTest.txt
echo -e "Time of when script has been run:" `date +%T` "\n" >> $HOME/TrueLayer/TLTest.txt
echo -e "Name of script file:" $0 "\n" >> $HOME/TrueLayer/TLTest.txt
echo -e "List of every file and folder name present in the running folder" `ls -a` "\n" >> $HOME/TrueLayer/TLTest.txt
echo -e "Public IP" `dig @resolver1.opendns.com A myip.opendns.com +short` "\n"  >> $HOME/TrueLayer/TLTest.txt
echo -e "PID:"$$ "Run by:" $USER "\n" >> $HOME/TrueLayer/TLTest.txt
fi
cat $HOME/TrueLayer/TLTest.txt
