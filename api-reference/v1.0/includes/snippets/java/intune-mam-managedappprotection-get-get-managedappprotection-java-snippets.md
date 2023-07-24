---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppPolicy managedAppPolicy = graphClient.deviceAppManagement().managedAppPolicies("{managedAppPolicyId}")
	.buildRequest()
	.get();

```