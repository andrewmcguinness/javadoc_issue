#!/bin/bash

mkdir -p bin lib javadoc

${JAVA_HOME}/bin/javac -classpath src/core  -d bin/core src/core/example/myproj/CoreClass.java src/core/module-info.java
${JAVA_HOME}/bin/jar --create --file lib/core.jar -C bin/core .

${JAVA_HOME}/bin/javac -classpath src/db --module-path lib -d bin/db src/db/example/myproj/db/DbClass.java src/db/module-info.java
${JAVA_HOME}/bin/jar --create --file lib/db.jar -C bin/db .

${JAVA_HOME}/bin/javac -classpath src/svc --module-path lib -d bin/svc src/svc/example/myproj/svc/Service.java src/svc/module-info.java
${JAVA_HOME}/bin/jar --create --file lib/svc.jar -C bin/svc .



${JAVA_HOME}/bin/javadoc -html5 --module-path lib --source-path src/core -d javadoc/core src/core/example/myproj/CoreClass.java

${JAVA_HOME}/bin/javadoc -html5 --module-path lib --source-path src/db -d javadoc/db src/db/example/myproj/db/DbClass.java

${JAVA_HOME}/bin/javadoc -html5 --module-path lib --source-path src/svc -d javadoc/svc -link ../core -link ../db src/svc/example/myproj/svc/Service.java

