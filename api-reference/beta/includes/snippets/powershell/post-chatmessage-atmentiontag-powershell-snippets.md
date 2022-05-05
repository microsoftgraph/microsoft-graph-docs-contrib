---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Body = @{
		ContentType = "html"
		Content = "<div><div><at id="0">TestTag</at>&nbsp;Testing Tags</div></div>"
	}
	Mentions = @(
		@{
			Id = 0
			MentionText = "TestTag"
			Mentioned = @{
				Tag = @{
					Id = "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM2OGEzZTM2NS1mN2Q5LTRhNTYtYjQ5OS0yNDMzMmE5Y2M1NzIjI3RTMERJZ1Z1ZQ=="
					DisplayName = "TestTag"
				}
			}
		}
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```