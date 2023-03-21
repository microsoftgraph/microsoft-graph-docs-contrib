---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Body = @{
		Content = "Hello world"
	}
}

New-MgChatMessage -ChatId $chatId -BodyParameter $params

```