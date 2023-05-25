---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	body = @{
		contentType = "html"
		content = "<div><div><at id="0">GraphTesting</at>&nbsp;Hello team</div></div>"
	}
	mentions = @(
		@{
			id = 0
			mentionText = "GraphTesting"
			mentioned = @{
				conversation = @{
					id = "68a3e365-f7d9-4a56-b499-24332a9cc572"
					displayName = "GraphTesting"
					conversationIdentityType = "team"
				}
			}
		}
	)
	reactions = @(
	)
	messageHistory = @(
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```