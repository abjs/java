myvariable=$(whoami)
FILE=jdk-15.0.2
JAVAFILE=/usr/java/jdk-15.0.2
FILERC=/home/$myvariable/.bashrc
if [ -d "$FILE" ]; then
    echo ""
else 
    tar zxvf jdk-15*
    echo "File extracted successfully"
fi

if [ -d "/usr/java" ] 
then
    echo "Java Folder already exists." 
else
    sudo mkdir /usr/java
    echo "Java Folder created"
fi

if [ -d "$JAVAFILE" ]; then
    echo " Java files a already exists in this directory $JAVAFILE"
else 
    sudo mv jdk-15.0.2 /usr/java  
    cat data.txt >>/home/$myvariable/.bashrc
    echo "Java files successfully copied"

fi
export JAVA_HOME=/usr/java/jdk-15.0.2;
export PATH=${PATH}:${JAVA_HOME}/bin;
echo "installation completed successfully"
