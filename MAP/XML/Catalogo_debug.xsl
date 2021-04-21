<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<?xml-stylesheet href="Catalogo.css"   type="text/css"?>
<xsl:template match="/">
  <html>
    <head>
<link rel="stylesheet" href="catalogo.css" type="text/css"/>

    </head>
  <body>
  <h1>Mulheres na América Portuguesa</h1>
   <h2>DEBUG!</h2>
  
   <xsl:apply-templates/>
  
  </body>
  </html>
</xsl:template> 

<xsl:template match="Folder[name='Ephemerae']"></xsl:template>
<xsl:template match="Folder[name='Trajetórias de correspondência']"></xsl:template>
   
<xsl:template match="Folder[name='Nomeadas em documento primário']">
    <xsl:apply-templates/>
    
</xsl:template>    

<xsl:template match="Folder[name='Autoras']">
    <xsl:apply-templates/> 
</xsl:template>



        
         <ol>
           <xsl:for-each select="Document/Folder/Placemark">
            <xsl:sort select="name"/> <xsl:text> </xsl:text>(<xsl:value-of select="..Document/Folder/name"/>)
            
           
       <li><xsl:value-of select="name"/>
       <br/><br/>
        <xsl:value-of select="ExtendedData/Data[@name='Arquivo']"/><xsl:value-of select="ExtendedData/Data[@name='Autoria do documento']"/><xsl:value-of select="ExtendedData/Data[@name='Código']"/>
        <xsl:number/><xsl:text> </xsl:text>(Documento 1)<br/><br/>
        
        <xsl:value-of select="ExtendedData/Data[@name='Arquivo, segundo documento']"/><xsl:value-of select="ExtendedData/Data[@name='Autoria do documento, segundo documento']"/><xsl:value-of select="ExtendedData/Data[@name='Código, segundo documento']"/><xsl:text> </xsl:text>(Documento 2)<br/><br/>
       
        <xsl:value-of select="ExtendedData/Data[@name='Arquivo, terceiro documento']"/><xsl:value-of select="ExtendedData/Data[@name='Autoria do documento, terceiro documento']"/><xsl:value-of select="ExtendedData/Data[@name='Código, terceiro documento']"/><xsl:text> </xsl:text>(Documento 3) <br/><br/>
          </li>
            
        </xsl:for-each>
         </ol>
         




</xsl:stylesheet>