---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ClaimsMappingPolicy claimsMappingPolicy = new ClaimsMappingPolicy();
claimsMappingPolicy.displayName = "UpdateClaimsPolicy";

graphClient.policies().claimsMappingPolicies("{id}")
	.buildRequest()
	.patch(claimsMappingPolicy);

```