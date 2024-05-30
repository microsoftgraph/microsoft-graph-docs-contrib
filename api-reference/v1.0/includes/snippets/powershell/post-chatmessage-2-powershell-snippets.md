---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	body = @{
		contentType = "html"
		content = "Hello World <at id="0">Jane Smith</at>"
	}
	mentions = @(
		@{
			id = 0
			mentionText = "Jane Smith"
			mentioned = @{
				user = @{
					displayName = "Jane Smith"
					id = "ef1c916a-3135-4417-ba27-8eb7bd084193"
					userIdentityType = "aadUser"
				}
			}
		}
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```