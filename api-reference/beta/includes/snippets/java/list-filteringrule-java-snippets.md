---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilteringPolicy filteringPolicy = graphClient.networkaccess().filteringPolicies("d0187e08-04cc-41b4-9a47-dd640e804280")
	.buildRequest()
	.expand("policyRules")
	.get();

```