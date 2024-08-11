<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                version="1.0"
                xmlns:crypto="http://www.example.com/crypto">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Crypto Trading Data</title>
                <style>
                    table { border-collapse: collapse; width: 100%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>Crypto Trading Data</h2>
                <table>
                    <tr>
                        <th>Crypto Name</th>
                        <th>Coin Type</th>
                        <th>Market Cap</th>
                        <th>Price (USD)</th>
                        <th>Volume (24h)</th>
                        <th>Circulating Supply</th>
                        <th>Trading Pairs</th>
                        <th>Exchange Name</th>
                    </tr>
                    
                    <xsl:for-each select="//crypto:cryptoTrading">
                        <tr>
                            <td><xsl:value-of select="crypto:cryptoName"/></td>
                            <td><xsl:value-of select="crypto:coinType"/></td>
                            <td><xsl:value-of select="crypto:marketCap"/></td>
                            <td><xsl:value-of select="crypto:priceUSD"/></td>
                            <td><xsl:value-of select="crypto:volume24h"/></td>
                            <td><xsl:value-of select="crypto:circulatingSupply"/></td>
                            <td><xsl:value-of select="crypto:tradingPairs"/></td>
                            <td><xsl:value-of select="crypto:exchangeName"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
