# compile with commons-lang3 in the classpath
javac -cp .:commons-lang-2.6/commons-lang-2.6.jar StringUtilsExample.java

# create a jar file
jar cfm StringUtilsExample.jar manifest.txt StringUtilsExample.class

# run the jar file
java -cp .:commons-lang-2.6/commons-lang-2.6.jar:StringUtilsExample.jar StringUtilsExample
