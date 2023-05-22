---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.requestType = "UserAdd";
AccessPackageAssignment accessPackageAssignment = new AccessPackageAssignment();
accessPackageAssignment.targetId = "007d1c7e-7fa8-4e33-b678-5e437acdcddc";
accessPackageAssignment.assignmentPolicyId = "db440482-1210-4a60-9b55-3ac7a72f63ba";
accessPackageAssignment.accessPackageId = "88203d16-0e31-41d4-87b2-dd402f1435e9";
accessPackageAssignmentRequest.accessPackageAssignment = accessPackageAssignment;

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests()
	.buildRequest()
	.post(accessPackageAssignmentRequest);

```