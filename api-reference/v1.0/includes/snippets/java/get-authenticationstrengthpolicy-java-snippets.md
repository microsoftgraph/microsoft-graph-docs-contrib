---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationStrengthPolicy authenticationStrengthPolicy = graphClient.policies().authenticationStrengthPolicies("00000000-0000-0000-0000-000000000004")
	.buildRequest()
	.get();

```