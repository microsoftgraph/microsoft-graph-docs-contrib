---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobilityManagementPolicyCollectionPage mobileDeviceManagementPolicies = graphClient.policies().mobileDeviceManagementPolicies()
	.buildRequest()
	.get();

```