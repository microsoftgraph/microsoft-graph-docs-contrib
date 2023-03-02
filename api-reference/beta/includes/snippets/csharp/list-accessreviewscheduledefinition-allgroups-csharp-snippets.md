---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "contains(scope/microsoft.graph.accessReviewQueryScope/query,%20'./members')";
});


```