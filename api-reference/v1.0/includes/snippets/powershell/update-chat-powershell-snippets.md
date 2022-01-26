---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Topic = "Group chat title update"
}

Update-MgChat -ChatId $chatId -BodyParameter $params

```