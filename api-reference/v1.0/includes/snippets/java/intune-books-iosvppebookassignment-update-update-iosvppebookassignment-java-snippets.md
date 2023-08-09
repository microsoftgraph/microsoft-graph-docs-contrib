---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosVppEBookAssignment managedEBookAssignment = new IosVppEBookAssignment();
DeviceAndAppManagementAssignmentTarget target = new DeviceAndAppManagementAssignmentTarget();
managedEBookAssignment.target = target;
managedEBookAssignment.installIntent = InstallIntent.REQUIRED;

graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").assignments("{managedEBookAssignmentId}")
	.buildRequest()
	.patch(managedEBookAssignment);

```