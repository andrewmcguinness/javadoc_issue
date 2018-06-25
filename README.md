Java 10 JavaDoc Issue
==============

```
export JAVA_HOME=/opt/jdk10.0.1 # or wherever your java is
./build.sh
```

This is a minimal example to explain the problem I'm having with javadoc
in Java 10

If you run the build and then open the javadoc file for Service.java javadoc/svc/example/myproj/svc/Service.html

It shows the constructor taking two parameters, a CoreClass from module example.myproj.core, and a DbClass from module example.myproj.db

The link to CoreClass works, the link to DbClass doesn't. The href is to `../../../../db/DbClass.html`, but should be to `../../../../db/example/myproj/db/DbClass.html`

StackOverflow link: [https://stackoverflow.com/questions/51000581/linking-between-modules-in-javadoc]

Java Bug database link: [https://bugs.java.com/bugdatabase/view_bug.do?bug_id=JDK-8205593]
