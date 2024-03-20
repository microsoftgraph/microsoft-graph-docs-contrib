---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType("adminRemove");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 assignment = new ();
assignment.setId("a6bb6942-3ae1-4259-9908-0133aaee9377");
additionalData.put("assignment", assignment);
accessPackageAssignmentRequest.setAdditionalData(additionalData);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```