---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationAssignment managedDeviceMobileAppConfigurationAssignment = new ManagedDeviceMobileAppConfigurationAssignment();
AllLicensedUsersAssignmentTarget target = new AllLicensedUsersAssignmentTarget();
managedDeviceMobileAppConfigurationAssignment.target = target;

graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}").assignments("{managedDeviceMobileAppConfigurationAssignmentId}")
	.buildRequest()
	.patch(managedDeviceMobileAppConfigurationAssignment);

```