<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>
          <xsl:value-of select="letra/titulo"/>
        </title>
        <link href="mi_cancion.css" rel="stylesheet"/>
      </head>
      <body>
        <h1>
          <xsl:value-of select="letra/titulo"/>
        </h1>
        <h2>
        <xsl:value-of select="letra/autor"/>
        </h2>
        <div>
          <xsl:for-each select="letra/estrofa">
            <ul>
              <xsl:for-each select="verso">
                <li>
                  <xsl:value-of select="."/>
                </li>
              </xsl:for-each>
            </ul>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>