---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	Id = "SCIM-Test1"
	ApplicationId = "{id}"
	FactoryTag = "CustomSCIM"
}

New-MgApplicationSynchronizationTemplate -ApplicationId $applicationId -BodyParameter $params

```