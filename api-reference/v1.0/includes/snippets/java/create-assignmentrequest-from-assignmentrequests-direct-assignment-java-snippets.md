---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType(AccessPackageRequestType.AdminAdd);
AccessPackageAssignment assignment = new AccessPackageAssignment();
AccessPackageSubject target = new AccessPackageSubject();
target.setEmail("user@contoso.com");
assignment.setTarget(target);
AccessPackageAssignmentPolicy assignmentPolicy = new AccessPackageAssignmentPolicy();
assignmentPolicy.setId("11114b50-0a08-4f96-83e9-1d714aa2cd79");
assignment.setAssignmentPolicy(assignmentPolicy);
AccessPackage accessPackage = new AccessPackage();
accessPackage.setId("11115C72-0612-4C43-A044-FC0A4E71A4C5");
assignment.setAccessPackage(accessPackage);
accessPackageAssignmentRequest.setAssignment(assignment);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```