---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	description = "Contoso Life v2.0"
	displayName = "Contoso Life Renewed"
}

Update-MgBetaGroup -GroupId $groupId -BodyParameter $params

```