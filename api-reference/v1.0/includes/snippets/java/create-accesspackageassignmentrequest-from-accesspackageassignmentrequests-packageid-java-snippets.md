---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType(AccessPackageRequestType.UserAdd);
AccessPackageAssignment assignment = new AccessPackageAssignment();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("accessPackageId", "d7be3253-b9c6-4fab-adef-30d30de8da2b");
assignment.setAdditionalData(additionalData);
accessPackageAssignmentRequest.setAssignment(assignment);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```