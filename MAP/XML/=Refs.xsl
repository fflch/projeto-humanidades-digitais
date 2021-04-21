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

      
      <script type="text/javascript">
      function Toggle() {
         var x = document.getElementById("togglewithbutton");
         if (x.style.visibility === "hidden") {
            x.style.visibility = "visible";
            } else {
               x.style.visibility = "hidden";
               }
      }
      </script>
      
  </head>
    
  <body>
    
  <div id="Content">
    
  <a name="Top"></a>
  


<!--////////////////Normal Header////////////////-->  
  
    
      <div id="Header" >
	<div id="Header-Title" class="Header-white">
          <a name="Top"></a>
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

<!--////////////////Main//////////////// --> 
 <div id="Main" class="Main-MAP-white">
  

    <h1>Lista Simples: Referências bibliográficas</h1>
  <h2>Documentos primários acessados, ou acessados e transcritos</h2>
  
  <div style="width: 70vw; padding: 10px;">
    <xsl:for-each select="Document/Folder[@name='Nomeadas em documento primário']/Placemark | Document/Folder[@name='Autoras']/Placemark ">
          
    <xsl:sort select="ExtendedData/Data[@name='Autoria do documento']"/> 
    

<!--COM 1 DOCUMENTO -->    
    <xsl:choose><!--Haver ou não um documentos: -->
          
<xsl:when test="ExtendedData/Data[@name='Número de documentos']/value[text()='1']"><!--Se houver um documentos -->   
    
          <xsl:value-of select="ExtendedData/Data[@name='Autoria do documento']"/>
              <xsl:text> </xsl:text>.
              <xsl:value-of select="ExtendedData/Data[@name='Tipo de documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Local do documento']"/>, <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Ano do documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Arquivo']"/> <xsl:text> - </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Indexador na fonte']"/>. <xsl:text> </xsl:text>
            
            <xsl:choose><!--haver ou não documento digitalizado, 1-->
              <xsl:when test="ExtendedData/Data[@name='URL da fonte']/value[text()='Documento não digitalizado']"><!--Se não houver digitalização, 1-->
              <em>Documento não disponível em repositórios digitais</em>. <span style="color: #666666;">
              <xsl:value-of select="name"/>,
              <xsl:value-of select="ExtendedData/Data[@name='Código']"/>
              </span>.
              </xsl:when>
          
              <xsl:otherwise><!--Se houver digitalização, 1-->
        
              <xsl:element name="a">
                <xsl:attribute name="href"><xsl:value-of select="normalize-space(ExtendedData/Data[@name='URL da fonte'])"/></xsl:attribute>
                <xsl:attribute name="class">wraplink</xsl:attribute>
                <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
                <xsl:value-of select="ExtendedData/Data[@name='URL da fonte']"/>
              </xsl:element>. <span style="color: #666666;">
              <xsl:value-of select="name"/>,
              <xsl:value-of select="ExtendedData/Data[@name='Código']"/></span>.
            
            </xsl:otherwise><!--Se houver digitalização, 1-->
          </xsl:choose><!--haver ou não 1 documento digitalizado-->
 
<br/><!--linha depois de entrada com 1 documento-->
<br/><!--linha depois de entrada com 1 documento-->

  </xsl:when><!--se houver 1 documento-->
  
  <xsl:otherwise>
    
  </xsl:otherwise>

</xsl:choose><!--haver ou não 1 documento-->




<!--COM SEGUNDO DOCUMENTO-->
          
<xsl:choose><!--Haver ou não 2 documentos: -->
          
<xsl:when test="ExtendedData/Data[@name='Número de documentos']/value[text()='2']"><!--Se houver 2 documentos -->           
          
              <xsl:value-of select="ExtendedData/Data[@name='Autoria do documento']"/>
              <xsl:text> </xsl:text>.
              <xsl:value-of select="ExtendedData/Data[@name='Tipo de documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Local do documento']"/>, <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Ano do documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Arquivo']"/> <xsl:text> - </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Indexador na fonte']"/>. <xsl:text> </xsl:text>
            
                <xsl:choose><!--haver ou não documento digitalizado, 1-->
                  <xsl:when test="ExtendedData/Data[@name='URL da fonte']/value[text()='Documento não digitalizado']"><!--Se não houver digitalização, 1-->
                  <em>Documento não disponível em repositórios digitais</em>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código']"/>
                  </span>.
                  </xsl:when>
              
                  <xsl:otherwise><!--Se houver digitalização, 1-->
            
                  <xsl:element name="a">
                    <xsl:attribute name="href"><xsl:value-of select="normalize-space(ExtendedData/Data[@name='URL da fonte'])"/></xsl:attribute>
                    <xsl:attribute name="class">wraplink</xsl:attribute>
                    <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
                    <xsl:value-of select="ExtendedData/Data[@name='URL da fonte']"/>
                  </xsl:element>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código']"/></span>.
                
                </xsl:otherwise><!--Se houver digitalização, 1-->
              </xsl:choose><!--haver ou não documento digitalizado, 1-->


<br/><!--linha entre o 1o e o 2o doc-->

<!--o 2o documento-->          
          <br/>
          <xsl:value-of select="ExtendedData/Data[@name='Autoria do documento, segundo documento']"/>
              <xsl:text> </xsl:text>.
              <xsl:value-of select="ExtendedData/Data[@name='Tipo de documento, segundo documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Local do documento, segundo documento']"/>, <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Ano do documento, segundo documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Arquivo, segundo documento']"/> <xsl:text> - </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Indexador na fonte, segundo documento']"/>. <xsl:text> </xsl:text>
            
                <xsl:choose><!--haver ou não documento digitalizado, 2-->
                  <xsl:when test="ExtendedData/Data[@name='URL da fonte, segundo documento']/value[text()='Documento não digitalizado']"><!--Se não houver digitalização, 2-->
                  <em>Documento não disponível em repositórios digitais</em>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código, segundo documento']"/>
                  </span>.
                  </xsl:when>
              
                  <xsl:otherwise><!--Se houver digitalização, 2-->
            
                  <xsl:element name="a">
                    <xsl:attribute name="href"><xsl:value-of select="normalize-space(ExtendedData/Data[@name='URL da fonte, segundo documento'])"/></xsl:attribute>
                    <xsl:attribute name="class">wraplink</xsl:attribute>
                    <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
                    <xsl:value-of select="ExtendedData/Data[@name='URL da fonte, segundo documento']"/>
                  </xsl:element>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código, segundo documento']"/></span>.
                
                </xsl:otherwise><!--Se houver digitalização, 2-->
              </xsl:choose><!--haver ou não documento digitalizado, 2-->
  
<br/><!--linha depois de entrada com 2 documentos-->
<br/><!--linha depois de entrada com 2 documentos-->
          
  </xsl:when><!--se houver 2 documento-->
  
  <xsl:otherwise>
    
  </xsl:otherwise>

</xsl:choose><!--haver ou não 2 documento-->


<!--COM TERCEIRO DOCUMENTO-->
<xsl:choose><!--Haver ou não 3 documentos: -->
          
<xsl:when test="ExtendedData/Data[@name='Número de documentos']/value[text()='3']"><!--Se houver 3 documentos -->   

          
          <xsl:value-of select="ExtendedData/Data[@name='Autoria do documento']"/>
              <xsl:text> </xsl:text>.
              <xsl:value-of select="ExtendedData/Data[@name='Tipo de documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Local do documento']"/>, <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Ano do documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Arquivo']"/> <xsl:text> - </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Indexador na fonte']"/>. <xsl:text> </xsl:text>
            
                <xsl:choose><!--haver ou não documento digitalizado, 1-->
                  <xsl:when test="ExtendedData/Data[@name='URL da fonte']/value[text()='Documento não digitalizado']"><!--Se não houver digitalização, 1-->
                  <em>Documento não disponível em repositórios digitais</em>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código']"/>
                  </span>.
                  </xsl:when>
              
                  <xsl:otherwise><!--Se houver digitalização, 1-->
            
                  <xsl:element name="a">
                    <xsl:attribute name="href"><xsl:value-of select="normalize-space(ExtendedData/Data[@name='URL da fonte'])"/></xsl:attribute>
                    <xsl:attribute name="class">wraplink</xsl:attribute>
                    <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
                    <xsl:value-of select="ExtendedData/Data[@name='URL da fonte']"/>
                  </xsl:element>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código']"/></span>.
                
                </xsl:otherwise><!--Se houver digitalização, 1-->
              </xsl:choose><!--haver ou não documento digitalizado, 1-->
              
<br/><!--linha entre o 1o e o 2o doc-->
<br/><!--linha entre o 1o e o 2o doc-->

              <xsl:value-of select="ExtendedData/Data[@name='Autoria do documento, segundo documento']"/>
                  <xsl:text> </xsl:text>.
                  <xsl:value-of select="ExtendedData/Data[@name='Tipo de documento, segundo documento']"/>. <xsl:text> </xsl:text>
                  <xsl:value-of select="ExtendedData/Data[@name='Local do documento, segundo documento']"/>, <xsl:text> </xsl:text>
                  <xsl:value-of select="ExtendedData/Data[@name='Ano do documento, segundo documento']"/>. <xsl:text> </xsl:text>
                  <xsl:value-of select="ExtendedData/Data[@name='Arquivo, segundo documento']"/> <xsl:text> - </xsl:text>
                  <xsl:value-of select="ExtendedData/Data[@name='Indexador na fonte, segundo documento']"/>. <xsl:text> </xsl:text>
                
                <xsl:choose><!--haver ou não documento digitalizado, 2-->
                  <xsl:when test="ExtendedData/Data[@name='URL da fonte, segundo documento']/value[text()='Documento não digitalizado']"><!--Se não houver digitalização, 2-->
                  <em>Documento não disponível em repositórios digitais</em>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código, segundo documento']"/>
                  </span>.
                  </xsl:when>
              
                  <xsl:otherwise><!--Se houver digitalização, 2-->
            
                  <xsl:element name="a">
                    <xsl:attribute name="href"><xsl:value-of select="normalize-space(ExtendedData/Data[@name='URL da fonte, segundo documento'])"/></xsl:attribute>
                    <xsl:attribute name="class">wraplink</xsl:attribute>
                    <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
                    <xsl:value-of select="ExtendedData/Data[@name='URL da fonte, segundo documento']"/>
                  </xsl:element>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código, segundo documento']"/></span>.
                
                </xsl:otherwise><!--Se houver digitalização, 2-->
              </xsl:choose><!--haver ou não documento digitalizado, 2-->
  
      
<!--o 3o doc-->
      
<br/><!--linha entre o 2o e o 3o doc-->
<br/><!--linha entre o 2o e o 3o doc-->

          <xsl:value-of select="ExtendedData/Data[@name='Autoria do documento, terceiro documento']"/>
              <xsl:text> </xsl:text>.
              <xsl:value-of select="ExtendedData/Data[@name='Tipo de documento, terceiro documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Local do documento, terceiro documento']"/>, <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Ano do documento, terceiro documento']"/>. <xsl:text> </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Arquivo, terceiro documento']"/> <xsl:text> - </xsl:text>
              <xsl:value-of select="ExtendedData/Data[@name='Indexador na fonte, terceiro documento']"/>. <xsl:text> </xsl:text>
            
                <xsl:choose><!--haver ou não documento digitalizado, 3-->
                  <xsl:when test="ExtendedData/Data[@name='URL da fonte, terceiro documento']/value[text()='Documento não digitalizado']"><!--Se não houver digitalização, 3-->
                  <em>Documento não disponível em repositórios digitais</em>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código, terceiro documento']"/>
                  </span>.
                  </xsl:when>
              
                  <xsl:otherwise><!--Se houver digitalização, 3-->
            
                  <xsl:element name="a">
                    <xsl:attribute name="href"><xsl:value-of select="normalize-space(ExtendedData/Data[@name='URL da fonte, terceiro documento'])"/></xsl:attribute>
                    <xsl:attribute name="class">wraplink</xsl:attribute>
                    <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
                    <xsl:value-of select="ExtendedData/Data[@name='URL da fonte, terceiro documento']"/>
                  </xsl:element>. <span style="color: #666666;">
                  <xsl:value-of select="name"/>,
                  <xsl:value-of select="ExtendedData/Data[@name='Código, terceiro documento']"/></span>.
                

                </xsl:otherwise><!--Se houver digitalização, 3-->
              </xsl:choose><!--haver ou não documento digitalizado, 3-->
 
<br/><!--linha depois de entrada com 3 documentos-->
<br/><!--linha depois de entrada com 3 documentos-->  
      
  </xsl:when><!--se houver 3 documento-->
  
  <xsl:otherwise>
    
  </xsl:otherwise>

</xsl:choose><!--haver ou não 3 documento-->   

   
    
    
    
    
    
</xsl:for-each>

</div>
  

  </div><!--Main-->

 


 
 <div id="Navbar" class="Navbar-bottom" style="border-top: 1px solid #999999;"><!--#Navbar-bottom-->
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

</div><!--Content-->

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
      
<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////        TEMPLATES FOR SPECIFIC FILES          /////-->
<!--/////                                              /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////-->  




<!--////////////////////START ENTRIES///////////////////////-->


</xsl:stylesheet>


<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////            TEMPLATES: END                    /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////-->        
