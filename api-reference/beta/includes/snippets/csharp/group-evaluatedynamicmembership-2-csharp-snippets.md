---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Groups.EvaluateDynamicMembership.EvaluateDynamicMembershipPostRequestBody
{
	MemberId = "319b41e8-d9e4-42f8-bdc9-741113f48b33",
	MembershipRule = "(user.displayName -startsWith \"EndTestUser\")",
};
var result = await graphClient.Groups.EvaluateDynamicMembership.PostAsync(requestBody);


```