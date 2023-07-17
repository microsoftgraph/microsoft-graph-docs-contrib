---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	displayName = "testProperties"
}

Invoke-MgBetaInstantiateApplicationTemplate -ApplicationTemplateId $applicationTemplateId -BodyParameter $params

```