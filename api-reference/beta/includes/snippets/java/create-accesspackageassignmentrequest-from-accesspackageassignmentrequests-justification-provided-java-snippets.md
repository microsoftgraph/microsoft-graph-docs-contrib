---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType("UserAdd");
AccessPackageAssignment accessPackageAssignment = new AccessPackageAssignment();
accessPackageAssignment.setAccessPackageId("a914b616-e04e-476b-aa37-91038f0b165b");
accessPackageAssignmentRequest.setAccessPackageAssignment(accessPackageAssignment);
accessPackageAssignmentRequest.setJustification("Need access to New Hire access package");
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests().post(accessPackageAssignmentRequest);


```