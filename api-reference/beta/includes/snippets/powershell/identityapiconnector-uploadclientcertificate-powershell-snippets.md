---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA"
	password = "<password>"
}

Invoke-MgBetaUploadIdentityApiConnectorClientCertificate -IdentityApiConnectorId $identityApiConnectorId -BodyParameter $params

```