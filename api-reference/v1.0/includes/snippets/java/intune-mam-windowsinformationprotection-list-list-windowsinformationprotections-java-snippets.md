---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppPolicyCollectionPage managedAppPolicies = graphClient.deviceAppManagement().managedAppPolicies()
	.buildRequest()
	.get();

```