---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	"@odata.type" = "#microsoft.graph.networkaccess.externalCertificateAuthorityCertificate"
	name = "Contoso Enterprise CA"
	commonName = "Contoso Enterprise Root CA"
	organizationName = "Contoso Ltd"
}

New-MgBetaNetworkAccessTlExternalCertificateAuthorityCertificate -BodyParameter $params

```