---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Subject = "Announcement Subheading"
	Body = @{
		ContentType = "text"
		Content = "<attachment id="d7ddbf876ae340c3a03bada395ec7da7"></attachment>Announcement text"
	}
	Attachments = @(
		@{
			Id = "d7ddbf876ae340c3a03bada395ec7da7"
			ContentType = "application/vnd.microsoft.teams.messaging-announcementBanner"
			ContentUrl = $null
			Content = "{"title":"Announcement heading","cardImageType":"uploadedImage","cardImageDetails":{"uploadedImageDetail":{"originalImage":{"source":"../hostedContents/1/$value","width":1379,"height":268,"croppedWidth":918.0,"croppedHeight":178.4075416968818,"leftMargin":0.0,"topMargin":90.7962291515591,"imageContentType":"image/png"},"croppedImage":{"source":"../hostedContents/2/$value"}}}}"
			Name = $null
			ThumbnailUrl = $null
		}
	)
	HostedContents = @(
		@{
			"@microsoft.graph.temporaryId" = "1"
			ContentBytes = [System.Text.Encoding]::ASCII.GetBytes("iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4")
			ContentType = "image/png"
		}
		@{
			"@microsoft.graph.temporaryId" = "2"
			ContentBytes = [System.Text.Encoding]::ASCII.GetBytes("iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4")
			ContentType = "image/png"
		}
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```