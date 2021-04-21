<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>


<!--Versão com cada documento na ordem normal dos dados-->

    
<xsl:template match="Document">
<kml xmlns="http://www.opengis.net/kml/2.2">
    
<Document>
    <name><xsl:value-of select="name"/></name>
    <description><xsl:value-of select="description"/></description>
    <xsl:apply-templates/>
</Document>
</kml>
</xsl:template>

<xsl:template match="name"></xsl:template>    
<xsl:template match="description"></xsl:template>

<xsl:template match="Style">
    
</xsl:template>    

<xsl:template match="StyleMap">
    
</xsl:template>

<xsl:template match="Folder[name='Nomeadas em documento primário' or name='Autoras' or name='Efemerae']">

   <Folder name="">
      <name><xsl:value-of select="name"/></name>
      
    <xsl:for-each select="Placemark">
      <xsl:text>
        
      </xsl:text>     
      <Placemark>
        <name><xsl:value-of select="name"/></name>
        <description></description>
        <styleUrl><xsl:value-of select="styleUrl"/></styleUrl>
        <ExtendedData>
        
        <!--Destaques-->
          <Data name="Nomeação">
            <value><xsl:value-of select="ExtendedData/Data[@name='Nomeação']/value"/></value>
          </Data>
          <Data name="Nomeação no segundo documento"><!--Eliminar se houver apenas um documento-->
            <value><xsl:value-of select="ExtendedData/Data[@name='Nomeação 2']/value"/></value>
          </Data>
          <Data name="Nomeação no terceiro documento"><!--Eliminar se houver apenas dois documentos-->
            <value><xsl:value-of select="ExtendedData/Data[@name='Nomeação 3']/value"/></value>
          </Data>
          
          <Data name="Voz">
            <value><xsl:value-of select="ExtendedData/Data[@name='Voz']/value"/></value>
          </Data>
          <Data name="Voz no segundo documento"><!--Eliminar se houver apenas um documento-->
            <value><xsl:value-of select="ExtendedData/Data[@name='Voz 2']/value"/></value>
          </Data>
          <Data name="Voz no terceiro documento"><!--Eliminar se houver apenas dois documentos-->
            <value><xsl:value-of select="ExtendedData/Data[@name='Voz 3']/value"/></value>
          </Data>
          
          <Data name="Descrição">
            <value><xsl:value-of select="ExtendedData/Data[@name='Descrição']/value"/></value>
          </Data>

        <!--Dados gerais-->

          <Data name="Idade">
            <value><xsl:value-of select="ExtendedData/Data[@name='Idade']/value"/></value>
          </Data>
          <Data name="Naturalidade">
            <value><xsl:value-of select="ExtendedData/Data[@name='Naturalidade']/value"/></value>
          </Data>
          <Data name="Morada">
            <value><xsl:value-of select="ExtendedData/Data[@name='Morada']/value"/></value>
          </Data>
          <Data name="Estatuto social">
            <value><xsl:value-of select="ExtendedData/Data[@name='Estatuto social']/value"/></value>
          </Data>
          <Data name="Estado civil">
            <value><xsl:value-of select="ExtendedData/Data[@name='Estado civil']/value"/></value>
          </Data>
 
        <!--Dados gerais do documento-->

          <Data name="Local do documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Local do documento']/value"/></value>
          </Data>
         <Data name="Local do documento, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Local do documento 2']/value"/></value>
          </Data>
         <Data name="Local do documento, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Local do documento 3']/value"/></value>
          </Data>
           
          <Data name="Ano do documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Ano do documento']/value"/></value>
          </Data>
          <Data name="Ano do documento, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Ano do documento 2']/value"/></value>
          </Data>
          <Data name="Ano do documento, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Ano do documento 3']/value"/></value>
          </Data>
          
          <Data name="Transcrição parcial">
            <value><xsl:value-of select="ExtendedData/Data[@name='Transcrição parcial']/value"/></value>
          </Data>
          <Data name="Transcrição parcial, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Transcrição parcial 2']/value"/></value>
          </Data>
          <Data name="Transcrição parcial, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Transcrição parcial 3']/value"/></value>
          </Data>
                 
          <Data name="Autoria da transcrição">
            <value><xsl:value-of select="ExtendedData/Data[@name='Transcrição parcial']/value"/></value>
          </Data>
          <Data name="Autoria da transcrição, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Transcrição parcial 2']/value"/></value>
          </Data>
          <Data name="Autoria da transcrição, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Transcrição parcial 3']/value"/></value>
          </Data>
      
        <!--Dados arquivísticos do documento-->
      
          <Data name="Estado do documento primário"><!--Documento transcrito; Documento acessível, digitalizado; Documento acessível; Documento inacesível-->
            <value><xsl:value-of select="ExtendedData/Data[@name='Documento primário']/value"/></value>
          </Data>
          <Data name="Estado do documento primário, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Documento primário 2']/value"/></value>
          </Data>
           <Data name="Estado do documento primário, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Documento primário 3']/value"/></value>
          </Data>
           
          <Data name="Tipo de documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Tipo de documento']/value"/></value>
          </Data>
          <Data name="Tipo de documento, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Tipo de documento 2']/value"/></value>
          </Data>
          <Data name="Tipo de documento, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Tipo de documento 3']/value"/></value>
          </Data>
          
          <Data name="Autoria do documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Autoria do documento']/value"/></value>
          </Data>
          <Data name="Autoria do documento, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Autoria do documento 2']/value"/></value>
          </Data>
          <Data name="Autoria do documento, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Autoria do documento 3']/value"/></value>
          </Data>
                    
          <Data name="Datação cronológica">
            <value><xsl:value-of select="ExtendedData/Data[@name='Datação cronológica']/value"/></value>
          </Data>
          <Data name="Datação cronológica, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Datação cronológica 2']/value"/></value>
          </Data>
          <Data name="Datação cronológica, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Datação cronológica 3']/value"/></value>
          </Data>
          
          <Data name="Arquivo">
            <value><xsl:value-of select="ExtendedData/Data[@name='Arquivo']/value"/></value>
          </Data>
          <Data name="Arquivo, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Arquivo 2']/value"/></value>
          </Data>
          <Data name="Arquivo, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Arquivo 3']/value"/></value>
          </Data>
          
          <Data name="Indexador na fonte">
            <value><xsl:value-of select="ExtendedData/Data[@name='Indexador na fonte']/value"/></value>
          </Data>
          <Data name="Indexador na fonte, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Indexador na fonte 2']/value"/></value>
          </Data>
          <Data name="Indexador na fonte, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Indexador na fonte 3']/value"/></value>
          </Data>
          
          <Data name="URL da fonte">
            <value><xsl:value-of select="ExtendedData/Data[@name='URL da fonte']/value"/></value>
          </Data>
          <Data name="URL da fonte, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='URL da fonte 2']/value"/></value>
          </Data>
          <Data name="URL da fonte, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='URL da fonte 3']/value"/></value>
          </Data>
  
        <!--Informações sobre fontes indiretas-->
       
         <Data name="Trecho de menção na bibliografia">
            <value><xsl:value-of select="ExtendedData/Data[@name='Trecho de menção na bibliografia']/value"/></value>
          </Data>
         
          <Data name="Fonte da menção na bibliografia">
            <value><xsl:value-of select="ExtendedData/Data[@name='Fonte da menção na bibliografia']/value"/></value>
          </Data>
          
          <Data name="Referência no DMB">
            <value><xsl:value-of select="ExtendedData/Data[@name='Referência no DMB']/value"/></value>
          </Data>
          
          <Data name="Indicação para documento primário">
            <value><xsl:value-of select="ExtendedData/Data[@name='Indicação para fonte']/value"/></value>
          </Data>
  
        <!--Informações internas-->

          <Data name="Número de documentos">
            <value><xsl:value-of select="ExtendedData/Data[@name='Número de documentos']/value"/></value>
          </Data>
          
          <Data name="Perfil"><!--Nomeada em documento primário; Autora; Autora indireta-->
            <value><xsl:value-of select="ExtendedData/Data[@name='Perfil']/value"/></value>
          </Data>
          <Data name="Perfil, segundo documento"><!--Nomeada em documento primário; Autora; Autora indireta-->
            <value><xsl:value-of select="ExtendedData/Data[@name='Perfil 2']/value"/></value>
          </Data>
          <Data name="Perfil, terceiro documento"><!--Nomeada em documento primário; Autora; Autora indireta-->
            <value><xsl:value-of select="ExtendedData/Data[@name='Perfil 3']/value"/></value>
          </Data>          
          <Data name="Detalhamento do perfil">
            <value><xsl:value-of select="ExtendedData/Data[@name='Detalhamento do perfil']/value"/></value>
          </Data>
          <Data name="Detalhamento do perfil, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Detalhamento do perfil 2']/value"/></value>
          </Data>
          <Data name="Detalhamento do perfil, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Detalhamento do perfil 3']/value"/></value>
          </Data>
          
           <Data name="Rede documental">
            <value><xsl:value-of select="ExtendedData/Data[@name='Rede documental']/value"/></value>
          </Data>
           <Data name="Rede documental, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Rede documental 2']/value"/></value>
          </Data>
           <Data name="Rede documental, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Rede documental 3']/value"/></value>
          </Data>
           
           <Data name="Chave de pesquisa">
            <value><xsl:value-of select="ExtendedData/Data[@name='Chave de pesquisa']/value"/></value>
          </Data>
           <Data name="Chave de pesquisa, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Chave de pesquisa 2']/value"/></value>
          </Data>
           <Data name="Chave de pesquisa, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Chave de pesquisa 3']/value"/></value>
          </Data>
           
          <Data name="Catalogadora">
            <value><xsl:value-of select="ExtendedData/Data[@name='Catalogadora']/value"/></value>
          </Data>
          <Data name="Catalogadora, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Catalogadora 2']/value"/></value>
          </Data>
          <Data name="Catalogadora, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Catalogadora 3']/value"/></value>
          </Data>          
          
          <Data name="Código"><!--NN, AA, AI; número; iniciais: [NN|001|FL]-->
            <value><xsl:value-of select="ExtendedData/Data[@name='Código']/value"/></value>
          </Data>
          <Data name="Código, segundo documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Código 2']/value"/></value>
          </Data>
          <Data name="Código, terceiro documento">
            <value><xsl:value-of select="ExtendedData/Data[@name='Código 3']/value"/></value>
          </Data>
        
        <!--Informações do Google Maps-->
        <xsl:text>
        </xsl:text> 

          <Data name="gx_media_links">
            <value><xsl:value-of select="ExtendedData/Data[@name='gx_media_links']/value"/></value>
          </Data>
        </ExtendedData>
        <Point>
          <coordinates><xsl:value-of select="Point/coordinates"/></coordinates>
        </Point>
      </Placemark>

      </xsl:for-each>
   </Folder>
   <xsl:text>
        
   </xsl:text>   
    </xsl:template>
 
    
<xsl:template match="Folder[name='Trajetórias de correspondência']">
   
    <Folder name="Trajetórias de correspondência">
      <name><xsl:value-of select="name"/></name> 
    <xsl:for-each select="Placemark">
       <Placemark>
        <name><xsl:value-of select="name"/></name>
        <description><xsl:value-of select="description"/></description>
        <styleUrl><xsl:value-of select="styleUrl"/></styleUrl>
        <LineString>
          <tessellate><xsl:value-of select="LineString/tessellate"/></tessellate>
          <coordinates>
          <xsl:value-of select="LineString/coordinates"/>
          </coordinates>
        </LineString>
      </Placemark>
    </xsl:for-each>
    </Folder>
     
</xsl:template>

</xsl:stylesheet>