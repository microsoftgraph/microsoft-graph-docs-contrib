---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "microsoft.graph.appleManagedIdentityProvider"
	displayName = "Apple"
	developerId = "qazx.1234"
	serviceId = "com.contoso.app"
	keyId = "4294967296"
	certificateData = "******"
}

New-MgBetaIdentityProvider -BodyParameter $params

```