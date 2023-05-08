---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Teams.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "startswith(displayName,%20'A')";
	requestConfiguration.QueryParameters.Top = 2;
});


```