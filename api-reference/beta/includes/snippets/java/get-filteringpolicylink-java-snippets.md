---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilteringPolicy filteringPolicy = graphClient.networkaccess().filteringPolicies("bb4e13cd-656b-499a-929f-d16bf16951ba")
	.buildRequest()
	.expand("policyRules")
	.get();

```