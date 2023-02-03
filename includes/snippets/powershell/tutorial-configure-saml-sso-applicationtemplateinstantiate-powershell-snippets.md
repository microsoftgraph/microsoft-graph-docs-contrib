---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	DisplayName = "AWS Contoso"
}

Invoke-MgInstantiateApplicationTemplate -ApplicationTemplateId $applicationTemplateId -BodyParameter $params

```