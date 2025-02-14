---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	"members@odata.bind" = @(
	"https://graph.microsoft.com/beta/directoryObjects/{id}"
"https://graph.microsoft.com/beta/directoryObjects/{id}"
"https://graph.microsoft.com/beta/directoryObjects/{id}"
)
}

Update-MgBetaGroup -GroupId $groupId -BodyParameter $params

```