<xsl:stylesheet 
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--xmlns="http://www.w3.org/2000/svg"-->

<xsl:template match="/">

	<html>
		<head>
			<meta charset="utf-8"/>
		</head>
		<body>
			<h1 style="text-align: center">Лабораторная 4. SVG</h1>
			<xsl:apply-templates/>
		</body>
	</html>
  
	<xsl:template match="графика">
		<svg xmlns="http://www.w3.org/1999/xhtml" width="@ширина" height="@высота">
			<xsl:apply-template/>
		</svg>
	</xsl:template>
	
	<xsl:template match="элипс">
		<ellipse id="@id" fill="@заливка" stroke="@ободок" stroke-width="@ширина-ободка" cx="@cx" cy="@cy" rx="@rx" ry="@ry"/>
	</xsl:template>
	
</xsl:template>
