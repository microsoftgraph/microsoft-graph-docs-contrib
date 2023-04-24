---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Message
{
	ReceivedDateTime = DateTimeOffset.Parse("datetime-value"),
	SentDateTime = DateTimeOffset.Parse("datetime-value"),
	HasAttachments = true,
	Subject = "subject-value",
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "content-value",
	},
	BodyPreview = "bodyPreview-value",
};
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].Messages.PostAsync(requestBody);


```