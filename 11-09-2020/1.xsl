<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/survey">
        <html>
            <head>
                <link href="style.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
            <center>
                <table >
                    <tr>
                        <th>Region</th>
                        <th>Location</th>
                        <th>Feature type</th>
                        <th>ROV Dives</th>
                        <th>Area covered</th>
                        <th>Depth range surveyed </th>
                        <th>Distance from land</th>
                        <th>Shipping activity proxy</th>
                        <th>Items</th>
                    </tr>
                    <xsl:for-each select="isro">
                    <xsl:sort select="rov_dives"/>
                    <xsl:if test="area_covered &gt; 1">
                        <tr>
                            <td>
                                <xsl:value-of select="region" />
                            </td>
                            <td>
                                <xsl:value-of select="location" />
                            </td>
                            <td>
                                <xsl:value-of select="feature_type" />
                            </td>
                            <td>
                                <xsl:value-of select="rov_dives" />
                            </td>
                            <td>
                                <xsl:value-of select="area_covered" />
                            </td> 
                            <td>
                                <xsl:value-of select="depth_range" />
                            </td>
                            <xsl:choose>
                               <xsl:when test="distance &gt; 1400">
                                 <td bgcolor="#0000ff">
                                 <xsl:value-of select="distance" /></td>
                               </xsl:when>
                               <xsl:otherwise>
                                <td>
                                 <xsl:value-of select="distance" /></td>
                               </xsl:otherwise>
                             </xsl:choose>
                            <td>
                                <xsl:value-of select="shipping" />
                            </td>
                            <td>
                                <xsl:value-of select="items" />
                            </td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                </center>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
