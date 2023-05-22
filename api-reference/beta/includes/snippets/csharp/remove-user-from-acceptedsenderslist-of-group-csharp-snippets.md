---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Groups["{group-id}"].AcceptedSenders.Ref.DeleteAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Id = "https://graph.microsoft.com/beta/users/{user-id}";
});


```