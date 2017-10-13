<xsl:stylesheet version="1.0" xml:lang="en" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/root">
	<html>
		<head>
			<meta charset="utf-8"/>
		</head>
		<body>
			<h1 style="text-align: center">Лабораторная 4. SVG</h1>
			<xsl:apply-templates/>
		</body>
	</html>
 </xsl:template>
 
	<xsl:template match="графика">
		<svg width="{@ширина}" height="{@высота}">
			<xsl:apply-templates/>
		</svg>
	</xsl:template>
	
	<xsl:template match="эллипс">
		<ellipse id="{@id}" fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
	</xsl:template>
	
</xsl:stylesheet>
<!--xmlns="http://www.w3.org/2000/svg"-->