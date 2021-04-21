<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////   Template for Dir structure: HD/MAP/XML     /////-->
<!--/////                                              /////-->
<!--/////      Link to files in /HD   = ../            /////--> 
<!--/////      Link to files in /MAP  = <self>         /////-->
<!--/////                                              /////-->
<!--/////                                              /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////-->

<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////    Template 1 is for all html outputs!       /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////--> 

<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////        TEMPLATE 1: Set HMTL structure        /////-->
<!--/////   Match Root, build html; 'apply-templates'  /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////-->

<xsl:template match="/">
  
  <html>
    
    <head>
      
      	<meta charset="UTF-8" />
	<meta name="viewport"
              content="width=device-width, initial-scale=1" />
	
	<meta name="description"
              content="Site do Projeto Mulheres na América Portuguesa, do grupo de pesquisas Humanidades Digitais, Núcleo de Apoio à Pesquisa em Etimologia e História da Língua Portuguesa da Faculdade de Filosofia, Letras e Ciências Humanas da Universidade de São Paulo" />
          
	<meta name="keywords"
              content="Mulheres na América Portuguesa, M.A.P, Humanidades Digitais, Grupo de Pesquisas, Núcleo de Apoio à Pesquisa em Etimologia e História da Língua Portuguesa, NEHiLP, Universidade de São Paulo, USP, Projeto Mulheres na América Portuguesa, Digital Humanities" />
          
	<meta name="author"
              content="Maria Clara Paixão de Sousa" />
		
	<title>M.A.P.: Mulheres na América Portuguesa ::
        Grupo de Pesquisas Humanidades Digitais ::</title>
      
      
      <link rel="stylesheet" href="../HD.css" type="text/css" />
      <link rel="icon" href="../Images/HD_favicon.png" />
      
  </head>
    
  <body>
    
  <div id="Content">
      <div id="Header">
	<div id="Header-Title" class="Header-white">
		<h1>M.A.P.</h1>
		<p><a href="../index.html">Grupo de pesquisas Humanidades Digitais</a>
                  <br/>Projeto Mulheres na América Portuguesa</p>
	</div>

 	<div class="DropdownNavbar-MAP"><!--#DropdownNavbar-->
		<div class="dropdown-keepwhite"><!-- home-->
			<div class="falsebutton-keepwhite">
				<a href="../index.html">Home</a>
			</div>
		</div><!--home-->
		<div class="dropdown-keepwhite"><!--MAP menu 1--> 
			<div class="falsebutton-withcontent-keepwhite">
				<a href="index.html">M.A.P.</a>
			<i class="arrow right"></i>
			</div>
			<div class="dropdown-content-MAP">	
			<a href="MAP_Recursos.html">Catálogos</a>	
			<a href="MAP_Projeto.html">Projeto</a>
			<a href="MAP_Equipe.html">Equipe</a>
			</div>
		</div><!--MAP menu 1-->
	</div><!--#DropdownNavbar-->
      </div><!--Header-->
 
 <div id="Main" class="Main-MAP-white">
  
  <h1>Catálogo: Lista Simples</h1>
  <h2>Documentos primários acessados, ou acessados e transcritos</h2>
          <xsl:apply-templates />
  </div><!--Main-->
</div><!--Content-->
 
<div id="Navbar" class="Navbar-bottom"><!--#Navbar-bottom-->
  <div class="Navbar-bottom-wrap"><!--#Navbar-bottom-wrap-->
    <ul class="menu-simple"><!--ul.menu-simple-->
	<li id="menu-item-1" class=""><a href="index.html">M.A.P. Home</a></li>
	<li id="menu-item-2" class=""><a href="MAP_Resumo.html">M.A.P. Projeto</a></li>
	<li id="menu-item-3" class=""><a href="MAP_Recursos.html">M.A.P. Recursos</a></li>
	<li id="menu-item-4" class=""><a href="../index.html">Humanidades Digitais</a></li>
    </ul><!--ul.menu-simple-->
  </div><!--#Navbar-bottom-wrap-->
</div><!--#Navbar-bottom-->
        
<div id="Footer"><!--#Footer-->

	<div id="footer_1" class="footer_left">
		<p>
		<a href="../index.html">Humanidades Digitais</a><br />
		Grupo de Pesquisas<br />
		Universidade de São Paulo
		</p>	
	</div>
	
	<div id="footer_2" class="footer_right">
		<p>
		<a href="http://nehilp.prp.usp.br">NEHiLP</a><br />
		Núcleo de Apoio à Pesquisa<br />
		Universidade de São Paulo<br />
		<br />
		nehilp@usp.br
		<br />
		<br />
		Av. Prof. Luciano Gualberto, 403<br />
		DLCV - FFLCH<br />
		Prédio de Letras, Sala 01<br />
		Cidade Universitária<br />
		CEP 05508-900<br />
		São Paulo - SP - Brasil<br />
		+55 (11) 3091-4294</p>
	</div>
</div><!--#Footer-->
  </body>
  </html>

</xsl:template>

<!--////////////////////////////////////////////////////////-->
<!--/////            BASE TEMPLATE: END                /////-->
<!--////////////////////////////////////////////////////////-->

<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////        TEMPLATES FOR SPECIFIC FILES          /////-->
<!--/////                                              /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////-->
 
     
   <xsl:template match="Document">

        
    <table class="CatalogTable">
    <tbody>
    <tr bgcolor="#99cccc">
    <th style="padding: 5px; font-weight: normal; width: auto;">Nr.</th>
    <th style="padding: 5px; font-weight: normal; width: 16%;">Nome</th>
    <th style="padding: 5px; font-weight: normal; width: 30%">Trecho original de nomeação</th>
    <th style="padding: 5px; font-weight: normal; width: 35%;">Dados detalhados</th>
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


<xsl:template match="Placemark">

<xsl:choose>
   
   <!--TO IGNORE EOHEMERAE-->        
   <xsl:when test="ancestor::Folder[@name='Ephemerae']">
    </xsl:when>      
          <xsl:otherwise>
             <xsl:choose>
	      <!--TO IGNORE TRAJETÓRIAS-->  
              <xsl:when test="ancestor::Folder[@name='Trajetórias de correspondência']">  
              </xsl:when>
              <xsl:otherwise>
 
      <xsl:for-each select="ExtendedData">
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
      
              </xsl:otherwise>
              </xsl:choose>
          </xsl:otherwise>
  </xsl:choose>

  
  </xsl:template>

</xsl:stylesheet>
