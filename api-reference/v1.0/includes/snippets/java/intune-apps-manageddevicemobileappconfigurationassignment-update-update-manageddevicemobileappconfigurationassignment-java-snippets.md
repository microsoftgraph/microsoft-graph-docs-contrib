---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedDeviceMobileAppConfigurationAssignment managedDeviceMobileAppConfigurationAssignment = new ManagedDeviceMobileAppConfigurationAssignment();
managedDeviceMobileAppConfigurationAssignment.setOdataType("#microsoft.graph.managedDeviceMobileAppConfigurationAssignment");
AllLicensedUsersAssignmentTarget target = new AllLicensedUsersAssignmentTarget();
target.setOdataType("microsoft.graph.allLicensedUsersAssignmentTarget");
managedDeviceMobileAppConfigurationAssignment.setTarget(target);
ManagedDeviceMobileAppConfigurationAssignment result = graphClient.deviceAppManagement().mobileAppConfigurations().byManagedDeviceMobileAppConfigurationId("{managedDeviceMobileAppConfiguration-id}").assignments().byManagedDeviceMobileAppConfigurationAssignmentId("{managedDeviceMobileAppConfigurationAssignment-id}").patch(managedDeviceMobileAppConfigurationAssignment);


```