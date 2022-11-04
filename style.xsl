<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<!-- match is a attribute-->
<!-- path expression ar maddome amra akta element k select korta pari-->
<!-- (/)=root means 1st thaka -->
   <html>
    <head>
        <title>XML Tutorial</title>
    </head>

    <body>
        <xsl:value-of select="personData/user/fname"/>
        <table>

            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>               
            </tr>

            <xsl:for_each select="personData/user">
            <!-- here we use a for loop-->

            <xsl:sort select="fname" order="descending"/>
            <!-- here we sort the table-->
            
            <xsl:if test="age &lt;=30">
            <!-- here we use codition. &lt=less than, &gt=grater than-->  

                 <tr>
                    <td>
                        <xsl:value-of select="@id"/>
                    </td>
                    <td>
                        <xsl:value-of select="fname"/>
                    </td>
                    <td>
                        <xsl:value-of select="lname"/>
                    </td>
                    <td>
                        <xsl:value-of select="email"/>
                    </td>
                 </tr>
            </xsl:if>     
            </xsl:for_each>

        </table>
    </body>

   </html>
    
</xsl:template>

</xsl:stylesheet>