<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
      
<!--<?xml-stylesheet href="+Catalogo.css"   type="text/css"?>-->

<xsl:template match="/">
  <html>
    <head>
      <link rel="stylesheet" href="Catalogo.css" type="text/css"/>        
    </head>
  <body>
    
    <h5>Projeto</h5>
    <h4><em>Agora andam me jurando a pele</em>: <br/>Escritos de mulheres e escritos sobre mulheres na América Portuguesa</h4> 
    <h1>Catálogo</h1>
    <h3>Lista simples</h3>
    <h5>(documentos primários acessados, ou acessados e transcritos)</h5>
          <xsl:apply-templates />
 
  </body>
  </html>

  </xsl:template>
   
     
   <xsl:template match="Document">

        
    <table style="font-family: Georgia; font-size: 12px; border: 1px solid #cccccc; border-collapse: collapse; width: 100%;">
    <tbody>
        <tr bgcolor="#99cccc">
    <th style="padding: 5px; font-weight: normal; width: auto;">Nr.</th>
    <th style="padding: 5px; font-weight: normal; width: 16%;">Nome</th>
    <th style="padding: 5px; font-weight: normal; width: 20%">Trecho original de nomeação</th>
    <th style="padding: 5px; font-weight: normal; width: 20%;">Descrição da catalogadora</th>
    <th style="padding: 5px; font-weight: normal; width: 25%;">Dados detalhados</th>
    <th style="padding: 5px; font-weight: normal; width: 10%;">Perfil documental</th>
    <th style="padding: 5px; font-weight: normal; width: 10%;">Documento(s)</th>
    
    </tr> 
      
    <xsl:apply-templates />
    
        </tbody>
  </table>
    
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


<xsl:template match="Folder">

<xsl:choose>
          
   <xsl:when test="@name='Ephemerae'">  
 
    </xsl:when>      
          <xsl:otherwise>
             <xsl:choose>
              <xsl:when test="@name='Trajetórias de correspondência'">  
     
              
              </xsl:when>
              <xsl:otherwise>
 
 
 <!--OLD-->
 
      <xsl:for-each select="Placemark/ExtendedData">
      <xsl:sort select="preceding-sibling::name"/>
      
    <tr>
      <td style="border: 1px solid #cccccc; vertical-align: text-top; width: 5px; padding: 5px;"></td>
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        
        <span><xsl:value-of select="preceding-sibling::name"/></span><br/>
        
      
      </td>

      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <em><xsl:value-of select="Data[@name='Nomeação']"/></em><br/><br/>
        <em><xsl:value-of select="Data[@name='Nomeação'][@type='doc2']"/></em><br/><br/>
        <em><xsl:value-of select="Data[@name='Nomeação'][@type='doc3']"/></em>  
      </td>
      
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <span><xsl:value-of select="description"/></span><br/><br/>
        <span style="color: #999999;"><xsl:value-of select="Data[@name='Rede documental']"/></span>
        
      
      </td>
      
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <span style="color: #999999;">Idade: </span><xsl:value-of select="Data[@name='Idade']"/><br/>
        <span style="color: #999999;">Estatuto social: </span><xsl:value-of select="Data[@name='Estatuto social']"/><br/>
        <span style="color: #999999;">Estado civil: </span><xsl:value-of select="Data[@name='Estado civil']"/><br/>
        <span style="color: #999999;">Morada: </span><xsl:value-of select="Data[@name='Morada']"/><br/>
        <span style="color: #999999;">Naturalidade: </span><xsl:value-of select="Data[@name='Naturalidade']"/><br/>
        <span style="color: #999999;">Local do documento: </span><xsl:value-of select="Data[@name='Local do documento']"/><br/><br/>
        <span style="color: #999999;">Chave de pesquisa: </span><xsl:value-of select="Data[@name='Chave de pesquisa']"/><br/>
        <span style="color: #999999;">Catalogado por: </span><xsl:value-of select="Data[@name='Catalogadora']"/> <xsl:text> </xsl:text> <xsl:value-of select="Data[@name='Catalogadora'][@type='doc2']"/>
      </td>
      
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px; color: #999999;">
        
        <xsl:value-of select="Data[@name='Perfil']"/><br/>
        <xsl:value-of select="Data[@name='Documento primário']"/><br/>
        <span style="color: #999999;"><xsl:value-of select="Data[@name='Código']"/></span>
        <br/><br/>
        
        
        <xsl:value-of select="Data[@name='Perfil'][@type='doc2']"/><br/>
        <xsl:value-of select="Data[@name='Documento primário'][@type='doc2']"/><br/>
        <span style="color: #999999;"><xsl:value-of select="Data[@name='Código'][@type='doc2']"/></span>
        
        <xsl:value-of select="Data[@name='Perfil'][@type='doc3']"/><br/>
        <xsl:value-of select="Data[@name='Documento primário'][@type='doc3']"/><br/>
        <span style="color: #999999;"><xsl:value-of select="Data[@name='Código'][@type='doc3']"/></span>
        
      
      </td>
      
       
        <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <xsl:value-of select="Data[@name='Ano do documento']"/>
        <xsl:element name="a">
        <xsl:attribute name="href"><xsl:value-of select="Data[@name='URL da fonte']"/></xsl:attribute>
        <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
        <xsl:value-of select="Data[@name='Arquivo']"/></xsl:element><br/>
        <br/><br/><br/>    
        <xsl:value-of select="Data[@name='Ano do documento'][@type='doc2']"/>
        <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="Data[@name='URL da fonte'][@type='doc2']"/></xsl:attribute><xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir segundo documento no repositório original</xsl:attribute>
        <xsl:value-of select="Data[@name='Arquivo'][@type='doc2']"/>
</xsl:element><br/>
                <br/><br/><br/>
        
        <xsl:value-of select="Data[@name='Ano do documento'][@type='doc3']"/>
        <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="Data[@name='URL da fonte'][@type='doc3']"/></xsl:attribute><xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir terceiro documento no repositório original</xsl:attribute>
        <xsl:value-of select="Data[@name='Arquivo'][@type='doc3']"/>
</xsl:element>
      
      </td>
      
      
      
    </tr>

</xsl:for-each>
      


 
 
 
 
 
 <!--old-->               
               
               
               
               
              </xsl:otherwise>
              </xsl:choose>
          </xsl:otherwise>
  </xsl:choose>

  
  </xsl:template>
          
          






















































   

   
    



  
<!--</xsl:template>-->

 
  
      

<!--https://www.freeformatter.com/xsl-transformer.html e https://sourceforge.net/projects/xtrans/-->







</xsl:stylesheet>