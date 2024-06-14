# Debug Oracle EPM configtool.jar

For debugging an issue with the Oracle EPM configtool.jar on RHEL. Built on Fedora 39.

When attempting to run `configtool.sh -debug`, we get the following error:

```bash
java.lang.ClassNotFoundException: org.apache.commons.lang.StringUtils
```

This example program uses the older version of `commons-lang`. To build with `apache-commons-lang3`, you can change the import line in [`StringUtilsExample.java`](./StringUtilsExample.java) and run the [`build-with-commons-lang3.sh`](./build-with-commons-lang3.sh).

### Install Java

Install Java 8 and switch your current version if you have a newer version installed.

```bash
# install java 8
sudo dnf install java-1.8.0-openjdk-devel.x86_64

# follow the prompt to select the correct version: 1.8
sudo alternatives --config java

# check your version
java -version
javac -version
```

### Install apache-commons-lang-2.6

Unzip the [`commons-lang-2.6-bin.zip`](./commons-lang-2.6-bin.zip) file.

```bash
unzip commons-lang-2.6-bin.zip
```

You can also download the older version here:
- [https://commons.apache.org/lang/download_lang.cgi](https://commons.apache.org/lang/download_lang.cgi)
- [https://commons.apache.org/proper/commons-lang/download_lang.cgi](https://commons.apache.org/proper/commons-lang/download_lang.cgi)

### Build and Run

```bash
# compile with commons-lang-2.6 in the classpath
javac -cp .:commons-lang-2.6/commons-lang-2.6.jar StringUtilsExample.java

# create a jar file
jar cfm StringUtilsExample.jar manifest.txt StringUtilsExample.class

# run the jar file
java -cp .:commons-lang-2.6/commons-lang-2.6.jar:StringUtilsExample.jar StringUtilsExample
```