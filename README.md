# lutece-dev-plugin-helloworld
This is a very short example of Lutece's XPageApplication.

# Requirements
To run it, you need the following software on your computer:
* maven
* ant
* MySQL or MariaDB
* a java servlet container (for example tomcat)
* a web browser

# Running
Follow these instructions:
* Assemble with maven:
```
$ mvn lutece:exploded
```
* edit the file target/lutece/WEB-INF/conf/db.properties to provide the mysql user and password
* Wipe and initialize a database:
```
$ cd target/lutece/WEB-INF/sql
$ ant
```
* Deploy in a servlet container
* visit in a web browser <webapp-base>/jsp/admin/system/ManagePlugins.jsp (for a local install, <webapp-base> is typically http://localhost:8080/lutece), login as 'admin' with password 'admin'
* install the plugin by clicking on the white triangle on a green square on the right
* visit the XPage at <webapp-base>/jsp/site/Portal.jsp?page=helloworld

# Running with docker
Requirements:
* docker >= 17.05
* docker-compose

Launch docker
* docker-compose up -d 
