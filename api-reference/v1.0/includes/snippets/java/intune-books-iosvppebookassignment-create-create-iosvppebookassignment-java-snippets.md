---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosVppEBookAssignment managedEBookAssignment = new IosVppEBookAssignment();
managedEBookAssignment.setOdataType("#microsoft.graph.iosVppEBookAssignment");
DeviceAndAppManagementAssignmentTarget target = new DeviceAndAppManagementAssignmentTarget();
target.setOdataType("microsoft.graph.deviceAndAppManagementAssignmentTarget");
managedEBookAssignment.setTarget(target);
managedEBookAssignment.setInstallIntent(InstallIntent.Required);
ManagedEBookAssignment result = graphClient.deviceAppManagement().managedEBooks().byManagedEBookId("{managedEBook-id}").assignments().post(managedEBookAssignment);


```