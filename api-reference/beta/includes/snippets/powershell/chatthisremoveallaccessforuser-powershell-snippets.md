---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	user = @{
		"@odata.type" = "microsoft.graph.teamworkUserIdentity"
	}
}

Remove-MgBetaChatAccessForUser -ChatId $chatId -BodyParameter $params

```