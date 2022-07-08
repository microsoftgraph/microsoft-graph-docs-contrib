---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/users/alexd@contoso.com"
}

New-MgGroupRejectedSenderByRef -GroupId $groupId -BodyParameter $params

```