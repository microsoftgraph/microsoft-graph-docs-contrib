---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/users/alexd@contoso.com"
}

New-MgBetaGroupAcceptedSenderByRef -GroupId $groupId -BodyParameter $params

```