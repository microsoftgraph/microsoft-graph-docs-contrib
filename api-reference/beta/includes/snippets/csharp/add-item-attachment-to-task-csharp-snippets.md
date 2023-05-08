---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Attachment
{
	OdataType = "#microsoft.graph.itemAttachment",
	Name = "Holiday event",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"item" , new 
			{
				OdataType = "microsoft.graph.event",
				Subject = "Discuss gifts for children",
				Body = new 
				{
					ContentType = "HTML",
					Content = "Let's look for funding!",
				},
				Start = new 
				{
					DateTime = "2020-01-12T18:00:00",
					TimeZone = "Pacific Standard Time",
				},
				End = new 
				{
					DateTime = "2020-01-12T19:00:00",
					TimeZone = "Pacific Standard Time",
				},
			}
		},
	},
};
var result = await graphClient.Me.Outlook.Tasks["{outlookTask-id}"].Attachments.PostAsync(requestBody);


```