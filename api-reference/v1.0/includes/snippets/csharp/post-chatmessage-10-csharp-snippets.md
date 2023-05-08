---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

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
			Content = "{\"title\":\"Announcement heading\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/1/$value\",\"width\":1379,\"height\":268,\"croppedWidth\":918.0,\"croppedHeight\":178.4075416968818,\"leftMargin\":0.0,\"topMargin\":90.7962291515591,\"imageContentType\":\"image/png\"},\"croppedImage\":{\"source\":\"../hostedContents/2/$value\"}}}}",
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
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages.PostAsync(requestBody);


```