---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Attachment
{
	OdataType = "microsoft.graph.fileAttachment",
	Name = "name-value",
	ContentType = "contentType-value",
	IsInline = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"contentLocation" , "contentLocation-value"
		},
		{
			"contentBytes" , "base64-contentBytes-value"
		},
	},
};
var result = await graphClient.Me.Messages["{message-id}"].Attachments.PostAsync(requestBody);


```