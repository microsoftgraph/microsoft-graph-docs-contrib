---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].Instances["{accessReviewInstance-id}"].Stages["{accessReviewStage-id}"].Decisions.FilterByCurrentUserWithOn("reviewer").GetAsFilterByCurrentUserWithOnGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "accessReviewId","reviewedDateTime","decision","justification","recommendation","reviewedBy","target" };
});


```