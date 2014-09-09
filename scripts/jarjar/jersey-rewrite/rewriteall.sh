#!/bin/bash
cp ../../../rootpom/pom.xml pom.xml
java -jar jarjar-1.4.jar process asmrewriterule.txt ~/.m2/repository/org/glassfish/hk2/external/asm-all-repackaged/2.2.0-b21/asm-all-repackaged-2.2.0-b21.jar asm-all-repackaged-2.2.0-b21-dma.jar
mvn deploy:deploy-file -Durl=dav:https://repository-dma.forge.cloudbees.com/release/\
                       -DrepositoryId=dma-release-repository\
                       -Dfile=asm-all-repackaged-2.2.0-b21-dma.jar \
                       -DgroupId=dk.dma.3rdparty.repackaged \
                       -DartifactId=asm-all-repackaged-dma \
                       -Dversion=2.2.0-b21 \
                       -Dpackaging=jar

java -jar jarjar-1.4.jar process asmrewriterule.txt ~/.m2/repository/org/glassfish/hk2/external/cglib/2.2.0-b21/cglib-2.2.0-b21.jar  cglib-2.2.0-b21-dma.jar
mvn deploy:deploy-file -Durl=dav:https://repository-dma.forge.cloudbees.com/release/\
                       -DrepositoryId=dma-release-repository\
                       -Dfile=cglib-2.2.0-b21-dma.jar \
                       -DgroupId=dk.dma.3rdparty.repackaged \
                       -DartifactId=cglib-dma.jar \
                       -Dversion=2.2.0-b21 \
                       -Dpackaging=jar
