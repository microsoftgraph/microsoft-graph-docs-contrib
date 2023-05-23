---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	use = "sig"
	kty = "RSA"
	nbf = 1508969811
	exp = 1508969811
}

New-MgTrustFrameworkKeySetKey -TrustFrameworkKeySetId $trustFrameworkKeySetId -BodyParameter $params

```