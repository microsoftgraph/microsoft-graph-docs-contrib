---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	PreferredSingleSignOnMode = "saml"
}

Update-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```