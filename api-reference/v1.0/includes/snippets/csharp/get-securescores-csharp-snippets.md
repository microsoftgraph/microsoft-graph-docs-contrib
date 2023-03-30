---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Security.SecureScores.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Top = 1;
});


```