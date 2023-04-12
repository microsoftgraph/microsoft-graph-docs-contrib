---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	body = @{
		contentType = "html"
		content = "<emoji alt="😶‍🌫️"></emoji>"
	}
}

New-MgChatMessage -ChatId $chatId -BodyParameter $params

```