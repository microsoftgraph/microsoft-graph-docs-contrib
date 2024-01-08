---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationStrengthUsage authenticationStrengthUsage = graphClient.policies().authenticationStrengthPolicies("{authenticationStrengthPolicyId}")
	.usage()
	.buildRequest()
	.get();

```