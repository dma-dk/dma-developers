dma-developers
==============






Checkstyle
===============================
Checkstyle is a development tool to help programmers write Java code that adheres to a coding standard.
Currently all of our process adheres to the standard we have set up.

The configuration files of checkstyle is located in 
dma-developers/dma-build-tool/src/main/resources/dma-build-tool
and is being built into a single jar file. So can we reference it
from other amven projects.

Checkstyle can be run in 2 ways:

1) CLI
At the command line it can be invoked by calling "mvn checkstyle:check" and will fail if
there are any violations in the project.

2) Eclipse
It can also be set up in eclipse. By following this short guide:
a) Install the checkstyle plugin
b) go to Preferences->Checkstyle
   Select New 
   Choose External Configuration
   Name = DMA
   Location = the full path to dma-developers/dma-build-tool/src/main/resources/dma-build-tool/checkstyle.xml
   Choose Addition properties and a property
     name = checkstyle.header.file
     value = /Users/kasperni/enav-workspace/dma-developers/dma-build-tool/src/main/resources/dma-build-tool/LICENSE.txt
   (Replace the path with correct one )
   Press OK a lot of times
c) Right click a project and select Activate Checkstyle
