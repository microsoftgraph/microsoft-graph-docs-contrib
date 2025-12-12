---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	certificate = "-----BEGIN CERTIFICATE-----
MIIBIjANBgkqh..."
	chain = "-----BEGIN CERTIFICATE-----
MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AM..."
}

Update-MgBetaNetworkAccessTlExternalCertificateAuthorityCertificate -ExternalCertificateAuthorityCertificateId $externalCertificateAuthorityCertificateId -BodyParameter $params

```