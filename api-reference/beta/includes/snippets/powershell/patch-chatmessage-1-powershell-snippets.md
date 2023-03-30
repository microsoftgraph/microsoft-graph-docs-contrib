---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	MessageType = "message"
	Subject = $null
	Summary = $null
	Importance = "normal"
	Locale = "en-us"
	From = @{
		Application = $null
		Device = $null
		User = @{
			Id = "3b102402-813e-4e17-a6b2-f841aef1fdfc"
			DisplayName = "Sumit Gupta"
			UserIdentityType = "aadUser"
		}
		Conversation = $null
	}
	Body = @{
		ContentType = "text"
		Content = "Edit text only"
	}
	Attachments = @(
	)
	Mentions = @(
	)
	Reactions = @(
	)
	MessageHistory = @(
	)
}

Update-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -ChatMessageId $chatMessageId -BodyParameter $params

```