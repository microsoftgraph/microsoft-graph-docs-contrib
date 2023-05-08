---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Top = 100;
	requestConfiguration.QueryParameters.Skip = 0;
});


```