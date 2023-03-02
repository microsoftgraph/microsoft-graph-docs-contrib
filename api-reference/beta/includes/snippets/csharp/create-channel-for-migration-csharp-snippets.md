---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Channel
{
	DisplayName = "Import_150958_99z",
	Description = "Import_150958_99z",
	CreatedDateTime = DateTimeOffset.Parse("2020-03-14T11:22:17.067Z"),
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@microsoft.graph.channelCreationMode" , "migration"
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Channels.PostAsync(requestBody);


```