---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	MessageType = "message"
	DeletedDateTime = $null
	Subject = $null
	Summary = $null
	Importance = "normal"
	Locale = "en-us"
	From = @{
		Application = $null
		Device = $null
		Conversation = $null
		User = @{
			Id = "6b3f3c54-d09c-4fdd-b146-9b514a8a4f40"
			DisplayName = "Sumit Gupta"
			UserIdentityType = "aadUser"
		}
	}
	Body = @{
		ContentType = "html"
		Content = "<div><div>
<div>
<div>
<div>
<div><at id="0">Raghav</at><at id="1">TestGlobalBot</at> YEAH"
	}
	Attachments = @(
	)
	Mentions = @(
		@{
			Id = 0
			MentionText = "Raghav"
			Mentioned = @{
				Application = $null
				Device = $null
				Conversation = $null
				User = @{
					Id = "f1b66449-b46d-49b0-9c3c-53c10234c818e"
					DisplayName = "Raghav Mankad"
					UserIdentityType = "aadUser"
				}
			}
		}
		@{
			Id = 1
			MentionText = "TestGlobalBot"
			Mentioned = @{
				Application = @{
					Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
					DisplayName = "TestGlobalBot"
					ApplicationIdentityType = "bot"
				}
				Device = $null
				Conversation = $null
				User = $null
			}
		}
	)
	Reactions = @(
	)
	MessageHistory = @(
	)
}

Update-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -ChatMessageId $chatMessageId -BodyParameter $params

```