---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedEBookAssignment managedEBookAssignment = new ManagedEBookAssignment();
AllLicensedUsersAssignmentTarget target = new AllLicensedUsersAssignmentTarget();
managedEBookAssignment.target = target;
managedEBookAssignment.installIntent = InstallIntent.REQUIRED;

graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").assignments("{managedEBookAssignmentId}")
	.buildRequest()
	.patch(managedEBookAssignment);

```