---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.requestType = "AdminAdd";
AccessPackageAssignment accessPackageAssignment = new AccessPackageAssignment();
AccessPackageSubject target = new AccessPackageSubject();
target.email = "user@contoso.com";
accessPackageAssignment.target = target;
accessPackageAssignment.assignmentPolicyId = "2264bf65-76ba-417b-a27d-54d291f0cbc8";
accessPackageAssignment.accessPackageId = "a914b616-e04e-476b-aa37-91038f0b165b";
accessPackageAssignmentRequest.accessPackageAssignment = accessPackageAssignment;

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests()
	.buildRequest()
	.post(accessPackageAssignmentRequest);

```