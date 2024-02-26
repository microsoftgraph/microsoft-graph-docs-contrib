---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.deviceappmanagement.targetedmanagedappconfigurations.item.assign.AssignPostRequestBody assignPostRequestBody = new com.microsoft.graph.deviceappmanagement.targetedmanagedappconfigurations.item.assign.AssignPostRequestBody();
LinkedList<TargetedManagedAppPolicyAssignment> assignments = new LinkedList<TargetedManagedAppPolicyAssignment>();
TargetedManagedAppPolicyAssignment targetedManagedAppPolicyAssignment = new TargetedManagedAppPolicyAssignment();
targetedManagedAppPolicyAssignment.setOdataType("#microsoft.graph.targetedManagedAppPolicyAssignment");
targetedManagedAppPolicyAssignment.setId("8b68c4a6-c4a6-8b68-a6c4-688ba6c4688b");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
targetedManagedAppPolicyAssignment.setTarget(target);
assignments.add(targetedManagedAppPolicyAssignment);
assignPostRequestBody.setAssignments(assignments);
graphClient.deviceAppManagement().targetedManagedAppConfigurations().byTargetedManagedAppConfigurationId("{targetedManagedAppConfiguration-id}").assign().post(assignPostRequestBody);


```