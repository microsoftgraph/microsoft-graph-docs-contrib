---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	addLicenses = @(
	)
	removeLicenses = @(
		"c7df2760-2c81-4ef7-b578-5b5392b571df"
		"b05e124f-c7cc-45a0-a6aa-8cf78c946968"
	)
}

Set-MgBetaGroupLicense -GroupId $groupId -BodyParameter $params

```