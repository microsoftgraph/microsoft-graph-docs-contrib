---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	body = @{
		content = "Hello world"
	}
}

New-MgBetaChatMessage -ChatId $chatId -BodyParameter $params

```