---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppManagementPolicy appManagementPolicy = new AppManagementPolicy();
appManagementPolicy.isEnabled = false;

graphClient.policies().appManagementPolicies("{id}")
	.buildRequest()
	.patch(appManagementPolicy);

```