---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedEBookAssignment managedEBookAssignment = new ManagedEBookAssignment();
managedEBookAssignment.setOdataType("#microsoft.graph.managedEBookAssignment");
AllLicensedUsersAssignmentTarget target = new AllLicensedUsersAssignmentTarget();
target.setOdataType("microsoft.graph.allLicensedUsersAssignmentTarget");
managedEBookAssignment.setTarget(target);
managedEBookAssignment.setInstallIntent(InstallIntent.Required);
ManagedEBookAssignment result = graphClient.deviceAppManagement().managedEBooks().byManagedEBookId("{managedEBook-id}").assignments().byManagedEBookAssignmentId("{managedEBookAssignment-id}").patch(managedEBookAssignment);


```