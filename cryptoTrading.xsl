<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns="http://www.example.com/crypto">

    <!-- Define the template for the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Crypto Trading</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 10px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Crypto Trading Site</h1>
                <table>
                    <tr>
                        <th>Element</th>
                        <th>Value</th>
                    </tr>
                    <tr>
                        <td>Crypto Name</td>
                        <td><xsl:value-of select="//ns:cryptoName"/></td>
                    </tr>
                    <tr>
                        <td>Coin Type</td>
                        <td><xsl:value-of select="//ns:coinType"/></td>
                    </tr>
                    <tr>
                        <td>Market Cap</td>
                        <td><xsl:value-of select="//ns:marketCap"/></td>
                    </tr>
                    <tr>
                        <td>Price USD</td>
                        <td><xsl:value-of select="//ns:priceUSD"/></td>
                    </tr>
                    <tr>
                        <td>Volume 24h</td>
                        <td><xsl:value-of select="//ns:volume24h"/></td>
                    </tr>
                    <tr>
                        <td>Circulating Supply</td>
                        <td><xsl:value-of select="//ns:circulatingSupply"/></td>
                    </tr>
                    <tr>
                        <td>Trading Pairs</td>
                        <td><xsl:value-of select="//ns:tradingPairs"/></td>
                    </tr>
                    <tr>
                        <td>Exchange Name</td>
                        <td><xsl:value-of select="//ns:exchangeName"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
