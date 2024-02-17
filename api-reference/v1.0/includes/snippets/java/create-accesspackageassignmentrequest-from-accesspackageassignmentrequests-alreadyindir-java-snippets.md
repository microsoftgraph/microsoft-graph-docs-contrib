---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType(AccessPackageRequestType.AdminAdd);
AccessPackageAssignment assignment = new AccessPackageAssignment();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("targetId", "46184453-e63b-4f20-86c2-c557ed5d5df9");
additionalData.put("assignmentPolicyId", "2264bf65-76ba-417b-a27d-54d291f0cbc8");
additionalData.put("accessPackageId", "a914b616-e04e-476b-aa37-91038f0b165b");
assignment.setAdditionalData(additionalData);
accessPackageAssignmentRequest.setAssignment(assignment);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```