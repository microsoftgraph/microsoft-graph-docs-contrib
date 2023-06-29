---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].Instances["{accessReviewInstance-id}"].Decisions.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Top = 100;
	requestConfiguration.QueryParameters.Skip = 0;
});


```