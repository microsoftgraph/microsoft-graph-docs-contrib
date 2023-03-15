---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Teams["{team-id}"].Channels.GetAllMessages.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "lastModifiedDateTime gt 2019-11-01T00:00:00Z and lastModifiedDateTime lt 2021-11-01T00:00:00Z";
});


```