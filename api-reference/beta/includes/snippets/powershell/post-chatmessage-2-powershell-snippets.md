---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Body = @{
		ContentType = "html"
		Content = "Hello World <at id="0">Jane Smith</at>"
	}
	Mentions = @(
		@{
			Id = 0
			MentionText = "Jane Smith"
			Mentioned = @{
				User = @{
					DisplayName = "Jane Smith"
					Id = "ef1c916a-3135-4417-ba27-8eb7bd084193"
					UserIdentityType = "aadUser"
				}
			}
		}
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```