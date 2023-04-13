---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	TemplateId = "BoxOutDelta"
}

New-MgServicePrincipalSynchronizationJob -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```