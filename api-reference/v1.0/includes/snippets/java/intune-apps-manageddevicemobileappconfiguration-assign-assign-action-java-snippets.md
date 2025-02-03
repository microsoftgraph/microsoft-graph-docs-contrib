---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.deviceappmanagement.mobileappconfigurations.item.assign.AssignPostRequestBody assignPostRequestBody = new com.microsoft.graph.deviceappmanagement.mobileappconfigurations.item.assign.AssignPostRequestBody();
LinkedList<ManagedDeviceMobileAppConfigurationAssignment> assignments = new LinkedList<ManagedDeviceMobileAppConfigurationAssignment>();
ManagedDeviceMobileAppConfigurationAssignment managedDeviceMobileAppConfigurationAssignment = new ManagedDeviceMobileAppConfigurationAssignment();
managedDeviceMobileAppConfigurationAssignment.setOdataType("#microsoft.graph.managedDeviceMobileAppConfigurationAssignment");
managedDeviceMobileAppConfigurationAssignment.setId("4df81c9c-1c9c-4df8-9c1c-f84d9c1cf84d");
AllLicensedUsersAssignmentTarget target = new AllLicensedUsersAssignmentTarget();
target.setOdataType("microsoft.graph.allLicensedUsersAssignmentTarget");
managedDeviceMobileAppConfigurationAssignment.setTarget(target);
assignments.add(managedDeviceMobileAppConfigurationAssignment);
assignPostRequestBody.setAssignments(assignments);
graphClient.deviceAppManagement().mobileAppConfigurations().byManagedDeviceMobileAppConfigurationId("{managedDeviceMobileAppConfiguration-id}").assign().post(assignPostRequestBody);


```