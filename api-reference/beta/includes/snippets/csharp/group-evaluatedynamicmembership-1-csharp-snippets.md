---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Groups.Item.EvaluateDynamicMembership;

var requestBody = new EvaluateDynamicMembershipPostRequestBody
{
	MemberId = "319b41e8-d9e4-42f8-bdc9-741113f48b33",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups["{group-id}"].EvaluateDynamicMembership.PostAsync(requestBody);


```