<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
  
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Football Teams</title>
      </head>
      <body>
        <xsl:for-each select="teams/team">
          
          <table>
            <thead>
              <tr>
                <th>Position</th>
                <th>Number</th>
                <th>Age</th>
                <th>Captain</th>
                <th>Goals</th>
                <th>Assists</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="players/player">
                <tr>
                  <td><xsl:value-of select="@position"/></td>
                  <td><xsl:value-of select="number"/></td>
                  <td><xsl:value-of select="age"/></td>
                  <td><xsl:value-of select="captain"/></td>
                  <td><xsl:value-of select="goals"/></td>
                  <td><xsl:value-of select="asists"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
