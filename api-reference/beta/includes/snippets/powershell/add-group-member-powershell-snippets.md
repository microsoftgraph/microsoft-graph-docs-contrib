---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/directoryObjects/{id}"
}

New-MgBetaGroupMemberByRef -GroupId $groupId -BodyParameter $params

```