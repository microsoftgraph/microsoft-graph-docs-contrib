---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ClaimsMappingPolicy
{
	DisplayName = "UpdateClaimsPolicy",
};
var result = await graphClient.Policies.ClaimsMappingPolicies["{claimsMappingPolicy-id}"].PatchAsync(requestBody);


```