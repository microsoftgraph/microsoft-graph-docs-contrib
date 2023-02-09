---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	Name = "jobGroup"
	DataType = "String"
    isMultiValued = 1,
	TargetObjects = @(
		"User"
	)
}

New-MgApplicationExtensionProperty -ApplicationId $applicationId -BodyParameter $params

```