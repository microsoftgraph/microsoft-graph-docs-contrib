---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	displayName = "Contoso IWA App"
}

Invoke-MgInstantiateApplicationTemplate -ApplicationTemplateId $applicationTemplateId -BodyParameter $params

```