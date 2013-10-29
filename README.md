Basic Spring Application
======================

Basic Spring Application utilizing Tiles 3.0, Twitter Bootstrap and JQuery.

The contents of this repository are free to use for starting any new
Spring WebMVC application.

The build environment uses Gradle along with Tomcat7x (which are included).

Neither Gradle nor Tomcat need to be installed as they are included in this
repository.  Just source the "source.build" file to use them.
```shell
source source.build
```

or

```shell
source source.build tomcat
```

======================

To build the application, simply run Gradle:
```shell
gradle build
```

======================

To run the application with the included tomcat server, start up tomcat:
```shell
startup.sh
```

Then run Gradle:
```shell
gradle cargoRedeployRemote
```

You should now be able to hit the server at:
	http://localhost:8080/nwcui


