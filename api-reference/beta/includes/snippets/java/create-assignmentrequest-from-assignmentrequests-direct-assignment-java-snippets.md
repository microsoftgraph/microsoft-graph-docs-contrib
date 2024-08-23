---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType("AdminAdd");
AccessPackageAssignment accessPackageAssignment = new AccessPackageAssignment();
AccessPackageSubject target = new AccessPackageSubject();
target.setEmail("user@contoso.com");
accessPackageAssignment.setTarget(target);
accessPackageAssignment.setAssignmentPolicyId("2264bf65-76ba-417b-a27d-54d291f0cbc8");
accessPackageAssignment.setAccessPackageId("a914b616-e04e-476b-aa37-91038f0b165b");
accessPackageAssignmentRequest.setAccessPackageAssignment(accessPackageAssignment);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```