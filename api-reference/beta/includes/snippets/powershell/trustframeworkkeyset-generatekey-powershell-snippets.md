---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	Use = "sig"
	Kty = "RSA"
	Nbf = 1508969811
	Exp = 1508969811
}

New-MgTrustFrameworkKeySetKey -TrustFrameworkKeySetId $trustFrameworkKeySetId -BodyParameter $params

```