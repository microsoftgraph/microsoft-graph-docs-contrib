---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	body = @{
		contentType = "html"
		content = "Testing with file share link. <attachment id="668f7fa8-8129-4de7-b32b-fe1b442e6ef1"></attachment>"
	}
	attachments = @(
		@{
			id = "668f7fa8-8129-4de7-b32b-fe1b442e6ef1"
			contentType = "reference"
			contentUrl = "https://teamsgraph-my.sharepoint.com/:w:/g/personal/test_teamsgraph_onmicrosoft_com/Eah_j2YpgedNsyv-G0QubvEBma6Sd_76UtYkXwoJ-nYVEg?e=0H2Ibm"
		}
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```