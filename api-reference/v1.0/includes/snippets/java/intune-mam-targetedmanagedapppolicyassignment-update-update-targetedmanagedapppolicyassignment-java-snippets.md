---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TargetedManagedAppPolicyAssignment targetedManagedAppPolicyAssignment = new TargetedManagedAppPolicyAssignment();
targetedManagedAppPolicyAssignment.setOdataType("#microsoft.graph.targetedManagedAppPolicyAssignment");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
targetedManagedAppPolicyAssignment.setTarget(target);
TargetedManagedAppPolicyAssignment result = graphClient.deviceAppManagement().iosManagedAppProtections().byIosManagedAppProtectionId("{iosManagedAppProtection-id}").assignments().byTargetedManagedAppPolicyAssignmentId("{targetedManagedAppPolicyAssignment-id}").patch(targetedManagedAppPolicyAssignment);


```