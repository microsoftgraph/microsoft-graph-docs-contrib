---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TargetedManagedAppPolicyAssignmentCollectionPage assignments = graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}").assignments()
	.buildRequest()
	.get();

```