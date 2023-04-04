---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	Use = "use-value"
	K = "application-secret-to-be-uploaded"
	Nbf = 1508969811
	Exp = 1508973711
}

Invoke-MgUploadTrustFrameworkKeySetSecret -TrustFrameworkKeySetId $trustFrameworkKeySetId -BodyParameter $params

```