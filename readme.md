Run the following to start the website app:

    mvn tomcat:run

Then, to test, run the following:

    mvn clean compile test

The local site can be found at http://locahost:8080/billparser/index.

Next steps to update:
 - More tests, particularly with linking between the two pages (posting requests, etc.)
 - Tidy up the bill screen a bit. In particular:
    - Put a ' + ' and ' - ' button to expand or contract the list of call charges.