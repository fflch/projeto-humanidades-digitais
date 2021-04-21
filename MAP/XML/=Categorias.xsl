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
    <h4><em>Agora andam me jurando a pele</em>: <br/>Escritos de mulheres e escritos sobre mulheres na América Portuguesa</h4> 
    <h1>Catálogo</h1>

    
    
          <xsl:apply-templates />
 
  </body>
  </html>

  </xsl:template>
   
     
   <xsl:template match="Document">
       <h3>Catálogo principal</h3>
       <h5>(Documentos primários acessados, ou acessados e transcritos)</h5>
      
    <xsl:apply-templates />
    
   </xsl:template>
   
   
   <xsl:template match="name"></xsl:template>
   <xsl:template match="description"></xsl:template>
   <xsl:template match="Style"></xsl:template>
   <xsl:template match="StyleMap"></xsl:template>
   
<xsl:template match="Folder[name='Nomeadas em documento primário' or name='Autoras']">
   
   <h3><xsl:value-of select="name"/></h3>
   
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
        
 
    <xsl:for-each select="Placemark">
        <xsl:sort select="name"/>
        <!--<xsl:sort select="ExtendedData/Data[@name='Idade']"/>-->
        
     
    <tr>
      <td style="border: 1px solid #cccccc; vertical-align: text-top; width: 5px; padding: 5px;"></td>
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <span><xsl:value-of select="name"/></span><br/>
        
      
      </td>

      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <em><xsl:value-of select="ExtendedData/Data[@name='Nomeação']"/></em><br/><br/>
        <em><xsl:value-of select="ExtendedData/Data[@name='Nomeação'][@type='doc2']"/></em><br/><br/>
        <em><xsl:value-of select="ExtendedData/Data[@name='Nomeação'][@type='doc3']"/></em>  
      </td>
      
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <span><xsl:value-of select="description"/></span><br/><br/>
        <span style="color: #999999;"><xsl:value-of select="ExtendedData/Data[@name='Rede documental']"/></span>
        
      
      </td>
      
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <span style="color: #999999;">Idade: </span><xsl:value-of select="ExtendedData/Data[@name='Idade']"/><br/>
        <span style="color: #999999;">Estatuto social: </span><xsl:value-of select="ExtendedData/Data[@name='Estatuto social']"/><br/>
        <span style="color: #999999;">Estado civil: </span><xsl:value-of select="ExtendedData/Data[@name='Estado civil']"/><br/>
        <span style="color: #999999;">Morada: </span><xsl:value-of select="ExtendedData/Data[@name='Morada']"/><br/>
        <span style="color: #999999;">Naturalidade: </span><xsl:value-of select="ExtendedData/Data[@name='Naturalidade']"/><br/>
        <span style="color: #999999;">Local do documento: </span><xsl:value-of select="ExtendedData/Data[@name='Local do documento']"/><br/><br/>
        <span style="color: #999999;">Chave de pesquisa: </span><xsl:value-of select="ExtendedData/Data[@name='Chave de pesquisa']"/><br/>
        <span style="color: #999999;">Catalogado por: </span><xsl:value-of select="ExtendedData/Data[@name='Catalogadora']"/> <xsl:text> </xsl:text> <xsl:value-of select="ExtendedData/Data[@name='Catalogadora'][@type='doc2']"/>
      </td>
      
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px; color: #999999;">
        
        <xsl:value-of select="ExtendedData/Data[@name='Perfil']"/><br/>
        <xsl:value-of select="ExtendedData/Data[@name='Documento primário']"/><br/>
        <span style="color: #999999;"><xsl:value-of select="ExtendedData/Data[@name='Código']"/></span>
        <br/><br/>
        
        
        <xsl:value-of select="ExtendedData/Data[@name='Perfil'][@type='doc2']"/><br/>
        <xsl:value-of select="ExtendedData/Data[@name='Documento primário'][@type='doc2']"/><br/>
        <span style="color: #999999;"><xsl:value-of select="ExtendedData/Data[@name='Código'][@type='doc2']"/></span>
        
        <xsl:value-of select="ExtendedData/Data[@name='Perfil'][@type='doc3']"/><br/>
        <xsl:value-of select="ExtendedData/Data[@name='Documento primário'][@type='doc3']"/><br/>
        <span style="color: #999999;"><xsl:value-of select="ExtendedData/Data[@name='Código'][@type='doc3']"/></span>
        
      
      </td>
      
       
        <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <xsl:value-of select="ExtendedData/Data[@name='Ano do documento']"/>
        <xsl:element name="a">
        <xsl:attribute name="href"><xsl:value-of select="ExtendedData/Data[@name='URL da fonte']"/></xsl:attribute>
        <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
        <xsl:value-of select="ExtendedData/Data[@name='Arquivo']"/></xsl:element><br/>
        <br/><br/><br/>    
        <xsl:value-of select="ExtendedData/Data[@name='Ano do documento'][@type='doc2']"/>
        <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="ExtendedData/Data[@name='URL da fonte'][@type='doc2']"/></xsl:attribute><xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir segundo documento no repositório original</xsl:attribute>
        <xsl:value-of select="ExtendedData/Data[@name='Arquivo'][@type='doc2']"/>
</xsl:element><br/>
                <br/><br/><br/>
        
        <xsl:value-of select="ExtendedData/Data[@name='Ano do documento'][@type='doc3']"/>
        <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="ExtendedData/Data[@name='URL da fonte'][@type='doc3']"/></xsl:attribute><xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir terceiro documento no repositório original</xsl:attribute>
        <xsl:value-of select="ExtendedData/Data[@name='Arquivo'][@type='doc3']"/>
</xsl:element>
      
      </td>
      
      
      
    </tr>
    </xsl:for-each>
    </tbody>
  </table>
  
</xsl:template>

 <!-- INICIO DA SELEÇÃO DO FOLDER EPHEMERAE -->   

<xsl:template match="Folder[name='Ephemerae']">  
  
  <h3>Catálogo secundário</h3>
  <h5>(Documentos ainda não acessados - catalogação provisória via fontes secundárias)</h5>
  
  <h3><xsl:value-of select="name"/></h3>
   <table style="font-family: Georgia; font-size: 12px; border: 1px solid #cccccc; border-collapse: collapse; width: 100%;">
    <tbody>
        <tr bgcolor="#99cccc">
    <th style="padding: 5px; font-weight: normal; width: auto;">Nr.</th>
    <th style="padding: 5px; font-weight: normal; width: 16%;">Nome</th>

    <th style="padding: 5px; font-weight: normal; width: 65%;">Observações da catalogadora</th>

    <th style="padding: 5px; font-weight: normal; width: 10%;">Perfil documental</th>
    <th style="padding: 5px; font-weight: normal; width: 10%;">Documento(s)</th>
    
    </tr>
 
    <xsl:for-each select="Placemark">
        <xsl:sort select="name"/> 
    <tr>
      <td style="border: 1px solid #cccccc; vertical-align: text-top; width: 5px; padding: 5px;"></td>
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <span><xsl:value-of select="name"/></span><br/>
        
      
      </td>


      
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        
        
        <span style="color: #999999;">Chave de pesquisa: </span><xsl:value-of select="ExtendedData/Data[@name='Chave de pesquisa']"/><br/>
        <span style="color: #999999;">Catalogado por: </span><xsl:value-of select="ExtendedData/Data[@name='Catalogadora']"/> <xsl:text> </xsl:text> <xsl:value-of select="ExtendedData/Data[@name='Catalogadora'][@type='doc2']"/>
         <br/><br/>
         <xsl:value-of select="ExtendedData/Data[@name='Rede documental']"/>
         <xsl:value-of select="description"/>
        <!--<xsl:value-of select="ExtendedData/Data[@name='Idade']"/> 
        <span style="color: #999999;"></span><xsl:value-of select="ExtendedData/Data[@name='Estatuto social']"/>
        <span style="color: #999999;"></span><xsl:value-of select="ExtendedData/Data[@name='Estado civil']"/>
        <span style="color: #999999;"></span><xsl:value-of select="ExtendedData/Data[@name='Morada']"/>
        <span style="color: #999999;"></span><xsl:value-of select="ExtendedData/Data[@name='Naturalidade']"/>
        <span style="color: #999999;"></span><xsl:value-of select="ExtendedData/Data[@name='Local do documento']"/>-->
      
      </td>
      

      
      <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px; color: #999999;">
        
        <xsl:value-of select="ExtendedData/Data[@name='Perfil']"/><br/>
        <xsl:value-of select="ExtendedData/Data[@name='Documento primário']"/><br/>
        <span style="color: #999999;"><xsl:value-of select="ExtendedData/Data[@name='Código']"/></span>

      </td>
      
       
        <td style="border: 1px solid #cccccc; vertical-align: text-top; padding: 5px;">
        <xsl:value-of select="ExtendedData/Data[@name='Ano do documento']"/>
        <xsl:element name="a">
        <xsl:attribute name="href"><xsl:value-of select="ExtendedData/Data[@name='URL da fonte']"/></xsl:attribute>
        <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
        <xsl:value-of select="ExtendedData/Data[@name='Arquivo']"/></xsl:element><br/>
 
      
      </td>
      
      
      
    </tr>
    </xsl:for-each>
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
<!--https://www.freeformatter.com/xsl-transformer.html e https://sourceforge.net/projects/xtrans/-->

</xsl:template>

<xsl:template match="Folder[name='Trajetórias de correspondência']"></xsl:template>



</xsl:stylesheet>