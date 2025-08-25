---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	body = @{
		contentType = "html"
		content = "<attachment id="74d20c7f34aa4a7fb74e2b30004247c5"></attachment>"
	}
	attachments = @(
		@{
			id = "74d20c7f34aa4a7fb74e2b30004247c5"
			contentType = "application/vnd.microsoft.card.fluidEmbedCard"
			content = '{"componentUrl": '{LoopComponent_url}', "sourceType": "Compose"}'
			name = $null
			thumbnailUrl = $null
			teamsAppId = "FluidEmbedCard"
		}
	)
}

New-MgBetaChatMessage -ChatId $chatId -BodyParameter $params

```