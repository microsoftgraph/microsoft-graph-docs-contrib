---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Body = @{
		ContentType = "html"
		Content = "<div><div><at id="0">GraphTesting</at>&nbsp;Hello team</div></div>"
	}
	Mentions = @(
		@{
			Id = 0
			MentionText = "GraphTesting"
			Mentioned = @{
				Conversation = @{
					Id = "68a3e365-f7d9-4a56-b499-24332a9cc572"
					DisplayName = "GraphTesting"
					ConversationIdentityType = "team"
				}
			}
		}
	)
	Reactions = @(
	)
	MessageHistory = @(
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```