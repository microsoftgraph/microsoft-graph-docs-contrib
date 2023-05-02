---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.policies().authenticationStrengthPolicies("6e7d7469-07c5-4bb2-a801-5eaef8fb7c1e").reference()
	.buildRequest()
	.delete();

```