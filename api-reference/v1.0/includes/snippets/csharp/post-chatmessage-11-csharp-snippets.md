---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ChatMessage
{
	Subject = "Announcement Subheading",
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text",
	},
	Attachments = new List<ChatMessageAttachment>
	{
		new ChatMessageAttachment
		{
			Id = "d7ddbf876ae340c3a03bada395ec7da7",
			ContentType = "application/vnd.microsoft.teams.messaging-announcementBanner",
			ContentUrl = null,
			Content = "{\"title\":\"\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/2/$value\",\"imageContentType\":\"image/jpg\"},\"croppedImage\":{\"source\":\"../hostedContents/1/$value\"}}}}",
			Name = null,
			ThumbnailUrl = null,
		},
	},
	HostedContents = new List<ChatMessageHostedContent>
	{
		new ChatMessageHostedContent
		{
			ContentBytes = Convert.FromBase64String("iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4"),
			ContentType = "image/png",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"@microsoft.graph.temporaryId" , "1"
				},
			},
		},
		new ChatMessageHostedContent
		{
			ContentBytes = Convert.FromBase64String("iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4"),
			ContentType = "image/png",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"@microsoft.graph.temporaryId" , "2"
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages.PostAsync(requestBody);


```