<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : Employees.xsl
    Created on : October 23, 2020, 3:23 PM
    Author     : Aman Bhist
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/Company">
        <html>
            <head>
                <title>Employees.xsl</title>
            </head>
            <body>
                <center>
                    <h1>Employee Management System</h1>
                    <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>SALARY</th>
                        <th>Email</th>
                        <th>MobNo</th>
                        <th>Designation</th>
                    </tr>
                    <xsl:for-each select="Employee">
                    <tr>
                        <td><xsl:value-of select="EId"/></td>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="age"/></td>
                        <td><xsl:value-of select="salary"/></td>
                        <td><xsl:value-of select="emailid"/></td>
                        <td><xsl:value-of select="phoneno"/></td>
                        <td><xsl:value-of select="designation"/></td>
                    </tr>
                    </xsl:for-each>
                    </table>    
                </center>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
