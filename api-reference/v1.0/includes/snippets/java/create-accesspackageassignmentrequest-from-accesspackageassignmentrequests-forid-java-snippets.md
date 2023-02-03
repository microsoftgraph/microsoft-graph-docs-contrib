---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.requestType = AccessPackageRequestType.ADMIN_REMOVE;
AccessPackageAssignment assignment = new AccessPackageAssignment();
assignment.id = "a6bb6942-3ae1-4259-9908-0133aaee9377";
accessPackageAssignmentRequest.assignment = assignment;

graphClient.identityGovernance().entitlementManagement().assignmentRequests()
	.buildRequest()
	.post(accessPackageAssignmentRequest);

```