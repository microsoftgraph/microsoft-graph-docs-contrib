---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	targetChatIds = @(
	"19:e2ed97baac8e4bffbb91299a38996790@thread.v2"
)
messageIds = @(
"1728088338580"
)
additionalMessage = @{
body = @{
	content = "Hello World"
}
}
}

Invoke-MgBetaForwardChatMessageToChat -ChatId $chatId -BodyParameter $params

```