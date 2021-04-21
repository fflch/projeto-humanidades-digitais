<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    

<xsl:strip-space elements="Data" />
    
<?xml-stylesheet href="Catalogo.css"   type="text/css"?>

<xsl:template match="/">
  <html>
    <head>
<link rel="stylesheet" href="catalogo.css" type="text/css"/>
    </head>
  <body>
    
    <h5>Projeto</h5>
    <h4><em>Agora andam me jurando a pele</em>: <br/>Escritos de mulheres e escritos sobre mulheres na América Portuguesa</h4> 
    <h1>Catálogo</h1>
    <h5>(Para Referências bibliográficas)</h5>


          <xsl:apply-templates />
 
  </body>
  </html>

  </xsl:template>
   
   
   <xsl:template match="Document">
   
    <!--<xsl:for-each select="Folder[@type='Include']">
            <h3><xsl:value-of select="name"/></h3>-->
    
   
   <h3>Catálogo principal</h3>
   <h5>(Documentos primários acessados, ou acessados e transcritos)</h5>
  
  
   <xsl:apply-templates />
   
   <h3>Equipe:</h3>
 <br/>
 <div style="font-family: Georgia; font-size: 12px; border: 1px solid #cccccc; padding: 10px; width: 360px;">
<xsl:text>Beatriz Moreira de Souza </xsl:text><span style="color: #999999;"><xsl:text>BMS</xsl:text></span><br/>
<xsl:text>Isabelle de Moura Vitorino </xsl:text><span style="color: #999999;"><xsl:text>IMV</xsl:text></span><br/>
<xsl:text>Letícia Junqueira Sena Alves </xsl:text><span style="color: #999999;"><xsl:text>LJ</xsl:text></span><br/>
<xsl:text>Maria Clara Paixão de Sousa </xsl:text><span style="color: #999999;"><xsl:text>MCPS</xsl:text></span><br/>
<xsl:text>Mariana Lourenço Sturzeneker </xsl:text><span style="color: #999999;"><xsl:text>MLS</xsl:text></span><br/>
<xsl:text>Tais Estéfanie Pacheco Ferreira </xsl:text><span style="color: #999999;"><xsl:text>TEPF</xsl:text></span><br/>
<xsl:text>Vanessa Martins do Monte </xsl:text><span style="color: #999999;"><xsl:text>VMM</xsl:text></span><br/>
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
      <xsl:apply-templates/> 
</xsl:template>  
    
    <xsl:template match="styleUrl"></xsl:template>
    <xsl:template match="Point"></xsl:template>
    
    <xsl:template match="ExtendedData">
      
<!--<xsl:for-each select="preceding-sibling::name">      
        <xsl:sort select="Data[@name='Autoria do documento']"/>-->
        
        <p style="padding-bottom: 10pt;">
          <xsl:value-of select="Data[@name='Autoria do documento']"/>
          <xsl:text> </xsl:text>(<xsl:value-of select="Data[@name='Ano do documento']"/>).
          <xsl:value-of select="Data[@name='Tipo de documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Local do documento']"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Ano do documento']"/>. <xsl:text> </xsl:text>
          Arquivado no <xsl:value-of select="Data[@name='Arquivo']"/>. <xsl:text> </xsl:text>
          Disponível em: <xsl:value-of select="Data[@name='URL da fonte']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="preceding-sibling::name"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Perfil']"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Código']"/>.
          
          
          <xsl:choose>
          
          <xsl:when test="Data[@name='Número de documentos']/value[text()='2']">
            
          <br/><br/>  
          <xsl:value-of select="Data[@name='Autoria do documento, segundo documento']"/>
          <xsl:text> </xsl:text>(<xsl:value-of select="Data[@name='Ano do documento, segundo documento']"/>).
          <xsl:value-of select="Data[@name='Tipo de documento, segundo documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Local do documento, segundo documento']"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Ano do documento, segundo documento']"/>. <xsl:text> </xsl:text>
          Arquivado no <xsl:value-of select="Data[@name='Arquivo, segundo documento']"/>. <xsl:text> </xsl:text>
          Disponível em: <xsl:value-of select="Data[@name='URL da fonte, segundo documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="preceding-sibling::name"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Perfil, segundo documento']"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Código, segundo documento']"/> (<em>Segundo documento</em>).
          
          
          </xsl:when>
          
          <xsl:otherwise>
           <br/> 
          </xsl:otherwise>
          </xsl:choose>
          
        
   </p>

        
 
        
        
   
  <!--</xsl:for-each>-->
  </xsl:template>
      

<!--https://www.freeformatter.com/xsl-transformer.html e https://sourceforge.net/projects/xtrans/-->


</xsl:stylesheet>