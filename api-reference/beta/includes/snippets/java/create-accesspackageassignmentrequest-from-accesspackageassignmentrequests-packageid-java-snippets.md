---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType("userAdd");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 assignment = new ();
assignment.setAccessPackageId("d7be3253-b9c6-4fab-adef-30d30de8da2b");
additionalData.put("assignment", assignment);
accessPackageAssignmentRequest.setAdditionalData(additionalData);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```