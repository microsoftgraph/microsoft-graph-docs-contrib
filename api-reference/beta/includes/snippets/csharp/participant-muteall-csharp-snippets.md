---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.Item.Participants.MuteAll.MuteAllPostRequestBody
{
	Participants = new List<string>
	{
		"",
	},
	ClientContext = "clientContext-value",
};
var result = await graphClient.Communications.Calls["{call-id}"].Participants.MuteAll.PostAsync(requestBody);


```