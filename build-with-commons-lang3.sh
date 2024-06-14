# install commons-lang3
# sudo dnf install apache-commons-lang3

# find where it is installed, take note, as we will use it in the classpath
# rpm -ql apache-commons-lang3

# compile with commons-lang3 in the classpath
javac -cp .:/usr/share/java/commons-lang3.jar StringUtilsExample.java

# create a jar file
jar cfm StringUtilsExample.jar manifest.txt StringUtilsExample.class

# run the jar file
java -cp .:/usr/share/java/commons-lang3.jar:StringUtilsExample.jar StringUtilsExample
