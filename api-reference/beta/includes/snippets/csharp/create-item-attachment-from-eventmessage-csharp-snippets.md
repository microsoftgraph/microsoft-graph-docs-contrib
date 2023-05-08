---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Attachment
{
	OdataType = "#Microsoft.OutlookServices.ItemAttachment",
	Name = "name-value",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"item" , new 
			{
				OdataType = "microsoft.graph.message",
			}
		},
	},
};
var result = await graphClient.Me.Events["{event-id}"].Attachments.PostAsync(requestBody);


```