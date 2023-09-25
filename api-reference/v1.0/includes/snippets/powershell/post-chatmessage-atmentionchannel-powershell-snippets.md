---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	body = @{
		contentType = "html"
		content = "<div><div><at id="0">General</at>&nbsp;Hello there!</div></div>"
	}
	mentions = @(
		@{
			id = 0
			mentionText = "General"
			mentioned = @{
				conversation = @{
					id = "19:0b50940236084d258c97b21bd01917b0@thread.skype"
					displayName = "General"
					conversationIdentityType = "channel"
				}
			}
		}
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```