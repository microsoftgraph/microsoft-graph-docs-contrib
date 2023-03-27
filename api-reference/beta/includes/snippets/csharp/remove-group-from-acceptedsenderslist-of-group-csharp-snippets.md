---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Groups["{group-id}"].AcceptedSenders.Ref.DeleteAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Id = "https://graph.microsoft.com/beta/groups/{other-group-id}";
});


```