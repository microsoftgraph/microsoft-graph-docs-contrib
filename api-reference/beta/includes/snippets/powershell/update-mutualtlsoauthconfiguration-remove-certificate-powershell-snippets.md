---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	certificateAuthorities = @(
		@{
			isRootAuthority = $true
			certificateRevocationListUrl = "http://LakeshoreRetail.com/root.crl"
			deltaCertificateRevocationListUrl = $null
			certificate = [System.Text.Encoding]::ASCII.GetBytes("Binary")
			issuer = "Lakeshore Retail"
			issuerSubjectkeyIdentifier = "SKI"
		}
	)
}

Update-MgBetaDirectoryCertificateAuthorityMutualTlOauthConfiguration -MutualTlsOauthConfigurationId $mutualTlsOauthConfigurationId -BodyParameter $params

```