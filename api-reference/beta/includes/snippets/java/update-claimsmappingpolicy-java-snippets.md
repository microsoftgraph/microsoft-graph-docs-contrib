---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ClaimsMappingPolicy claimsMappingPolicy = new ClaimsMappingPolicy();
claimsMappingPolicy.setDisplayName("UpdateClaimsPolicy");
ClaimsMappingPolicy result = graphClient.policies().claimsMappingPolicies().byClaimsMappingPolicyId("{claimsMappingPolicy-id}").patch(claimsMappingPolicy);


```