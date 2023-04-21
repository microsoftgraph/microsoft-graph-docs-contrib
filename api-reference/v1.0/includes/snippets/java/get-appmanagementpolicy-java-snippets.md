---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppManagementPolicy appManagementPolicy = graphClient.policies().appManagementPolicies("{id}")
	.buildRequest()
	.get();

```