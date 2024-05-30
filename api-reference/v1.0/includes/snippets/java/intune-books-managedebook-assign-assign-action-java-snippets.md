---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.deviceappmanagement.managedebooks.item.assign.AssignPostRequestBody assignPostRequestBody = new com.microsoft.graph.deviceappmanagement.managedebooks.item.assign.AssignPostRequestBody();
LinkedList<ManagedEBookAssignment> managedEBookAssignments = new LinkedList<ManagedEBookAssignment>();
ManagedEBookAssignment managedEBookAssignment = new ManagedEBookAssignment();
managedEBookAssignment.setOdataType("#microsoft.graph.managedEBookAssignment");
managedEBookAssignment.setId("ae8b0d27-0d27-ae8b-270d-8bae270d8bae");
AllLicensedUsersAssignmentTarget target = new AllLicensedUsersAssignmentTarget();
target.setOdataType("microsoft.graph.allLicensedUsersAssignmentTarget");
managedEBookAssignment.setTarget(target);
managedEBookAssignment.setInstallIntent(InstallIntent.Required);
managedEBookAssignments.add(managedEBookAssignment);
assignPostRequestBody.setManagedEBookAssignments(managedEBookAssignments);
graphClient.deviceAppManagement().managedEBooks().byManagedEBookId("{managedEBook-id}").assign().post(assignPostRequestBody);


```