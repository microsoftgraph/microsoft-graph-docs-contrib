---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Description = "Contoso Life v2.0"
	DisplayName = "Contoso Life Renewed"
}

Update-MgGroup -GroupId $groupId -BodyParameter $params

```