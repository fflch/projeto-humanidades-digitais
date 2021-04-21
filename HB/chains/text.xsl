<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="@* | node()">
        <xsl:copy>
          <head>
            <title>Experimento de navegação por cadeias referenciais</title>


            <link rel="stylesheet" type="text/css" href="style_1.css" title="default">
              <link rel="alternate stylesheet" type="text/css" href="style_3.css" title="alternate">
                  
          </head>
          <body>
            <div class="wrapper" style="margin: 0">
              
              <iframe class="nav" name="nav" src="nav_0.html"></iframe>
              
              <div class="content">
                <div class="clauses">
                  
            <xsl:apply-templates select="@* | node()"/>

                </div><!---clauses--->
                </div><!---content--->
            </div><!---wrapper-->
          </body>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
