---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	subject = "Announcement Subheading"
	body = @{
		contentType = "text"
		content = "<attachment id="d7ddbf876ae340c3a03bada395ec7da7"></attachment>Announcement text"
	}
	attachments = @(
		@{
			id = "d7ddbf876ae340c3a03bada395ec7da7"
			contentType = "application/vnd.microsoft.teams.messaging-announcementBanner"
			contentUrl = $null
			content = '{"title":"","cardImageType":"uploadedImage","cardImageDetails":{"uploadedImageDetail":{"originalImage":{"source":"../hostedContents/2/$value","imageContentType":"image/jpg"},"croppedImage":{"source":"../hostedContents/1/$value"}}}}'
			name = $null
			thumbnailUrl = $null
		}
	)
	hostedContents = @(
		@{
			"@microsoft.graph.temporaryId" = "1"
			contentBytes = [System.Text.Encoding]::ASCII.GetBytes("iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4c6QAAAARnQU1BA")
			contentType = "image/png"
		}
		@{
			"@microsoft.graph.temporaryId" = "2"
			contentBytes = [System.Text.Encoding]::ASCII.GetBytes("iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4c6QAAIABJREFUe")
			contentType = "image/png"
		}
	)
}

New-MgBetaTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```