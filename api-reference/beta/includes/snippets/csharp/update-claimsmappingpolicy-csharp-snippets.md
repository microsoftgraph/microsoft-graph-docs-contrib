---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var claimsMappingPolicy = new ClaimsMappingPolicy
{
	DisplayName = "UpdateClaimsPolicy"
};

await graphClient.Policies.ClaimsMappingPolicies["{claimsMappingPolicy-id}"]
	.Request()
	.UpdateAsync(claimsMappingPolicy);

```