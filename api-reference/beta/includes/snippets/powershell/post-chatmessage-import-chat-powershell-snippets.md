---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	createdDateTime = [System.DateTime]::Parse("2019-02-04T19:58:15.511Z")
	from = @{
		user = @{
			id = "8ea0e38b-efb3-4757-924a-5f94061cf8c2"
			displayName = "Robin Kline"
			userIdentityType = "aadUser"
		}
	}
	body = @{
		contentType = "html"
		content = "Hello World"
	}
}

New-MgBetaChatMessage -ChatId $chatId -BodyParameter $params

```