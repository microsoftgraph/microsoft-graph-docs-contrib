---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Body = @{
		ContentType = "html"
		Content = "<div><div><at id="0">General</at>&nbsp;Hello there!</div></div>"
	}
	Mentions = @(
		@{
			Id = 0
			MentionText = "General"
			Mentioned = @{
				Conversation = @{
					Id = "19:0b50940236084d258c97b21bd01917b0@thread.skype"
					DisplayName = "General"
					ConversationIdentityType = "channel"
				}
			}
		}
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```