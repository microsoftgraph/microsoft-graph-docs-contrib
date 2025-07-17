---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	body = @{
		contentType = "html"
		content = "<at id="0">TestTag</at>&nbsp;Testing Tags"
	}
	mentions = @(
		@{
			id = 0
			mentionText = "TestTag"
			mentioned = @{
				tag = @{
					id = "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM2OGEzZTM2NS1mN2Q5LTRhNTYtYjQ5OS0yNDMzMmE5Y2M1NzIjI3RTMERJZ1Z1ZQ=="
					displayName = "TestTag"
				}
			}
		}
	)
}

New-MgBetaTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```