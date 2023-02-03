---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	AuthenticationConfiguration = @{
		"@odata.type" = "#microsoft.graph.pkcs12Certificate"
		Pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA"
		Password = "secret"
	}
}

Update-MgIdentityApiConnector -IdentityApiConnectorId $identityApiConnectorId -BodyParameter $params

```