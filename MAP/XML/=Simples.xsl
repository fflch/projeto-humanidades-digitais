<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<?xml-stylesheet href="Catalogo.css"   type="text/css"?>

<xsl:template match="/">
      <html>
        <head>
          <link rel="stylesheet" href="Catalogo.css" type="text/css"/>
          
            <style>
              Document {font-family: "Georgia", Garamond, serif;}
                
               a:link { color: #006699; text-decoration: none; } 
               a:visited { color: #99cccc; text-decoration: none;	}
               a:active { color: #ff6666; text-decoration: none;	 }
               a:hover { color: #ff9999; text-decoration: none;	 }
               
               h1 {padding: 30px 0px 0px 0px; margin: 0px 0px 0px 0px; color: #99cccc; font-size: 38px; font-weight: bold;}
               h2 {padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px; color: #99cccc; font-size: 28px; font-weight: bold;}
               h3 {padding: 20px 0px 0px 0px; margin: 0px 0px 0px 0px; color: #99cccc; font-size: 20px; font-weight: bold;}
               h4 {padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px; color: #999999; font-size: 16px; font-weight: normal; border-bottom: 1px solid #cccccc;}
               h5 {padding: 0px 0px 30px 0px; margin: 0px 0px 0px 0px; color: #999999; font-size: 16px; font-weight: normal;}
                
               tr:hover:not(:first-child) {background-color:#ffffe6;}  <!--#e6f2ff-->
            
               table {counter-reset: rowNumber;}
              
               table tr:not(:first-child) {counter-increment: rowNumber;}
              
               table tr td:first-child::before {
                  content: counter(rowNumber);
                  min-width: 1em;
                  margin-right: 0.5em;
               }
            </style>
        </head>
        
        <body>
          <h5>Projeto</h5>
          <h4>Agora andam me jurando a pele: <xsl:text> </xsl:text>Escritos de mulheres e escritos sobre mulheres na América Portuguesa</h4> 
          <h1>Catálogo</h1>
          <h3>XML simples</h3>
          <h5>(todos os documentos)</h5>
                
<xsl:apply-templates />
     
        </body>
      </html>

</xsl:template>
   
     
<xsl:template match="Document">

<xsl:apply-templates />
 
    <h3>Equipe:</h3>
    <xsl:text> </xsl:text>
      <div style="font-family: Georgia; font-size: 12px; border: 1px solid #cccccc; padding: 10px; width: 360px;">
     <xsl:text>Beatriz Moreira de Souza </xsl:text><xsl:text>BMS</xsl:text><xsl:text> </xsl:text>
     <xsl:text>Isabelle de Moura Vitorino </xsl:text><xsl:text>IMV</xsl:text><xsl:text> </xsl:text>
     <xsl:text>Letícia Junqueira Sena Alves </xsl:text><xsl:text>LJ</xsl:text><xsl:text> </xsl:text>
     <xsl:text>Maria Clara Paixão de Sousa </xsl:text><xsl:text>MCPS</xsl:text><xsl:text> </xsl:text>
     <xsl:text>Mariana Lourenço Sturzeneker </xsl:text><xsl:text>MLS</xsl:text><xsl:text> </xsl:text>
     <xsl:text>Tais Estéfanie Pacheco Ferreira </xsl:text><xsl:text>TEPF</xsl:text><xsl:text> </xsl:text>
     <xsl:text>Vanessa Martins do Monte </xsl:text><xsl:text>VMM</xsl:text><xsl:text> </xsl:text>
      </div>
      
</xsl:template>
   
<xsl:template match="name"></xsl:template>

<xsl:template match="description"></xsl:template>

<xsl:template match="Style"></xsl:template>

<xsl:template match="StyleMap"></xsl:template>

<xsl:template match="Folder[name='Ephemerae']"></xsl:template>

<xsl:template match="Folder[name='Trajetórias de correspondência']"></xsl:template>
   
<xsl:template match="Folder[name='Nomeadas em documento primário']">
<xsl:apply-templates/>
</xsl:template>    

<xsl:template match="Folder[name='Autoras']">
<xsl:apply-templates/> 
</xsl:template>     
 
<xsl:template match="Placemark">
<xsl:apply-templates>
<xsl:sort select="name"/>
</xsl:apply-templates>
</xsl:template>
    
<xsl:template match="styleUrl"></xsl:template>
<xsl:template match="Point"></xsl:template> 

<xsl:template match="ExtendedData">
  
        <div style="width: 80%;">
        
        <h3><xsl:value-of select="preceding-sibling::name"/></h3><xsl:text> </xsl:text>
        <br/>
        <xsl:for-each select="Data">
        <p style="line-height: 12pt; padding-bottom: 0pt; padding-left: 20pt; text-indent: -20pt;">
        <xsl:number/><xsl:text>.  </xsl:text>
        <span style="color: #333333; font-style: italic;">
          <xsl:value-of select="@name"/><xsl:text>: </xsl:text></span>  
        <xsl:value-of select="value"/><xsl:text> </xsl:text><br/>
        </p>
 
        </xsl:for-each>
        <br/>
        <br/>
        </div>
</xsl:template>

</xsl:stylesheet>

