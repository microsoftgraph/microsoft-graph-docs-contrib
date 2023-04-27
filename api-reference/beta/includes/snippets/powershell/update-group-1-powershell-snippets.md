---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	description = "Contoso Life v2.0"
	displayName = "Contoso Life Renewed"
}

Update-MgGroup -GroupId $groupId -BodyParameter $params

```