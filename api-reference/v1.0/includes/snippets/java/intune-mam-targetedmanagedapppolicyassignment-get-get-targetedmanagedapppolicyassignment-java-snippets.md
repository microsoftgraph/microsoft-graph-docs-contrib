---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TargetedManagedAppPolicyAssignment targetedManagedAppPolicyAssignment = graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}").assignments("{targetedManagedAppPolicyAssignmentId}")
	.buildRequest()
	.get();

```