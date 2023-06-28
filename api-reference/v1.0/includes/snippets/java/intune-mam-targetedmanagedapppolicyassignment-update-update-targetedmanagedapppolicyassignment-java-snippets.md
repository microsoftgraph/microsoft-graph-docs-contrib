---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TargetedManagedAppPolicyAssignment targetedManagedAppPolicyAssignment = new TargetedManagedAppPolicyAssignment();
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.collectionId = "Collection Id value";
targetedManagedAppPolicyAssignment.target = target;

graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}").assignments("{targetedManagedAppPolicyAssignmentId}")
	.buildRequest()
	.patch(targetedManagedAppPolicyAssignment);

```