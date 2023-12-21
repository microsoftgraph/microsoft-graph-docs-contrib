---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	id = "5793aa3b-cca9-4794-679a240f8b58"
}

Remove-MgBetaServicePrincipalPasswordSingleSignOnCredential -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```