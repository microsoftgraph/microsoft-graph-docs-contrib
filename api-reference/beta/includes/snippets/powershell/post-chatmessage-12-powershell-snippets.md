---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Body = @{
		ContentType = "html"
		Content = "<emoji alt="😶‍🌫️"></emoji>"
	}
}

New-MgChatMessage -ChatId $chatId -BodyParameter $params

```