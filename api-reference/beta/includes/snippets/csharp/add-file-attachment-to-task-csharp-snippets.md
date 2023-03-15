---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Attachment
{
	OdataType = "#microsoft.graph.fileAttachment",
	Name = "menu.txt",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"contentBytes" , "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
		},
	},
};
var result = await graphClient.Me.Outlook.Tasks["{outlookTask-id}"].Attachments.PostAsync(requestBody);


```