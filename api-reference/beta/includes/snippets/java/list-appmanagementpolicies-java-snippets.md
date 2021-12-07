---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppManagementPolicyCollectionPage appManagementPolicies = graphClient.policies().appManagementPolicies()
	.buildRequest()
	.get();

```