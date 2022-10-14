---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	DisplayName = "Test API"
	TargetUrl = "https://someotherapi.com/api"
	AuthenticationConfiguration = @{
		"@odata.type" = "#microsoft.graph.pkcs12Certificate"
		Pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA"
		Password = "CertificatePassword"
	}
}

New-MgIdentityApiConnector -BodyParameter $params

```