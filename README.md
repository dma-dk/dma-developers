dma-developers
==============
This repositories contains various development tools. Useful when working with any of the dma-dk repositories.

Checkstyle
===============================
Checkstyle is a development tool to help programmers write Java code that adheres to a coding standard.
Currently all of our projects adheres to the standard we have set up.

The configuration files of checkstyle is located in 
dma-developers/dma-build-tool/src/main/resources/dma-build-tool
and is being built into a single jar file. So can we reference it
from other maven projects.

Checkstyle can be run in 2 ways:

##### CLI
At the command line it can be invoked by calling "mvn checkstyle:check". It will fail if
there are any violations in the project. 

##### Eclipse
It can also be set up in Eclipse. By following this short guide:
+ Install the checkstyle plugin
+ Go to Preferences->Checkstyle
+ Select New 
+ Choose External Configuration
+ Name = DMA
+   Location = the full path to dma-developers/dma-build-tool/src/main/resources/dma-build-tool/checkstyle.xml
+   Choose Addition properties and add this property:
+     name = checkstyle.header.file
+     value = dma-developers/dma-build-tool/src/main/resources/dma-build-tool/LICENSE.txt
+   (Replace the above path with the full correct one)
+   Press OK a 3 times

Now right click any project and select Activate Checkstyle

License headers
========================
Script to update headers in a project. You might need to update the path to the shell script.

     find . -name "*.java" -exec ../dma-developers/update-headers/update_headers.sh {} \; 
