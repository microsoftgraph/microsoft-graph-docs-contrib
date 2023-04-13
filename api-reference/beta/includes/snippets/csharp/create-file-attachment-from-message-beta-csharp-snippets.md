---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new FileAttachment
{
	Name = "smile",
	ContentBytes = Convert.FromBase64String("a0b1c76de9f7=")
};

await graphClient.Me.Messages["{message-id}"].Attachments
	.Request()
	.AddAsync(attachment);

```