---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "microsoft.graph.appleManagedIdentityProvider"
	DisplayName = "Sign in with Apple"
	DeveloperId = "UBF8T346G9"
	ServiceId = "com.microsoft.rts.b2c.test.client"
	KeyId = "99P6D879C4"
	CertificateData = "******"
}

New-MgIdentityProvider -BodyParameter $params

```