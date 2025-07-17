---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Planner.Plans.Item.Unarchive;

var requestBody = new UnarchivePostRequestBody
{
	Justification = "String",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Planner.Plans["{plannerPlan-id}"].Unarchive.PostAsync(requestBody);


```