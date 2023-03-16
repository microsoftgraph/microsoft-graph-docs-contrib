---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Admin.ServiceAnnouncement.Messages.Archive.ArchivePostRequestBody
{
	MessageIds = new List<string>
	{
		"MC172851",
		"MC167983",
	},
};
var result = await graphClient.Admin.ServiceAnnouncement.Messages.Archive.PostAsync(requestBody);


```