---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	Name = "jobGroup"
	DataType = "String"
	TargetObjects = @(
		"User"
	)
}

New-MgApplicationExtensionProperty -ApplicationId $applicationId -BodyParameter $params

```