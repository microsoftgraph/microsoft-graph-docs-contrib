---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	messageType = "message"
	subject = $null
	summary = $null
	importance = "normal"
	locale = "en-us"
	from = @{
		application = $null
		device = $null
		user = @{
			id = "3b102402-813e-4e17-a6b2-f841aef1fdfc"
			displayName = "Lam Cong"
			userIdentityType = "aadUser"
		}
		conversation = $null
	}
	body = @{
		contentType = "text"
		content = "Edit text only"
	}
	attachments = @(
	)
	mentions = @(
	)
	reactions = @(
	)
}

Update-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -ChatMessageId $chatMessageId -BodyParameter $params

```