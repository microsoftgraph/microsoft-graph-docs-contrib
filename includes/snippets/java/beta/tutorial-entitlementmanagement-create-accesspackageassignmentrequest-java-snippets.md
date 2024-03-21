---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType("UserAdd");
AccessPackageAssignment accessPackageAssignment = new AccessPackageAssignment();
accessPackageAssignment.setTargetId("007d1c7e-7fa8-4e33-b678-5e437acdcddc");
accessPackageAssignment.setAssignmentPolicyId("db440482-1210-4a60-9b55-3ac7a72f63ba");
accessPackageAssignment.setAccessPackageId("88203d16-0e31-41d4-87b2-dd402f1435e9");
accessPackageAssignmentRequest.setAccessPackageAssignment(accessPackageAssignment);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests().post(accessPackageAssignmentRequest);


```