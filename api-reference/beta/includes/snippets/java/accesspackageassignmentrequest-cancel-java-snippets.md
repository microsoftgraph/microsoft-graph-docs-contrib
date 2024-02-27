---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.cancel.CancelPostRequestBody cancelPostRequestBody = new com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.cancel.CancelPostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("id", "request-id");
additionalData.put("requestStatus", "cancelled");
cancelPostRequestBody.setAdditionalData(additionalData);
graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests().byAccessPackageAssignmentRequestId("{accessPackageAssignmentRequest-id}").cancel().post(cancelPostRequestBody);


```