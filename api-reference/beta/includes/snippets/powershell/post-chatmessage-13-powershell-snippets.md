---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	body = @{
		messageBodyContentType = "html"
		content = "<emoji alt="😶‍🌫️"></emoji>"
	}
}

New-MgBetaChatMessage -ChatId $chatId -BodyParameter $params

```