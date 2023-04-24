---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	messageType = "message"
	deletedDateTime = $null
	subject = $null
	summary = $null
	importance = "normal"
	locale = "en-us"
	from = @{
		application = $null
		device = $null
		conversation = $null
		user = @{
			id = "6b3f3c54-d09c-4fdd-b146-9b514a8a4f40"
			displayName = "Sumit Gupta"
			userIdentityType = "aadUser"
		}
	}
	body = @{
		contentType = "html"
		content = "<div><div>
<div>
<div>
<div>
<div><at id="0">Raghav</at><at id="1">TestGlobalBot</at> YEAH"
	}
	attachments = @(
	)
	mentions = @(
		@{
			id = 0
			mentionText = "Raghav"
			mentioned = @{
				application = $null
				device = $null
				conversation = $null
				user = @{
					id = "f1b66449-b46d-49b0-9c3c-53c10234c818e"
					displayName = "Raghav Mankad"
					userIdentityType = "aadUser"
				}
			}
		}
		@{
			id = 1
			mentionText = "TestGlobalBot"
			mentioned = @{
				application = @{
					id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
					displayName = "TestGlobalBot"
					applicationIdentityType = "bot"
				}
				device = $null
				conversation = $null
				user = $null
			}
		}
	)
	reactions = @(
	)
	messageHistory = @(
	)
}

Update-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -ChatMessageId $chatMessageId -BodyParameter $params

```