---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	body = @{
		content = "Hello World"
	}
}

New-MgChatMessage -ChatId $chatId -BodyParameter $params

```