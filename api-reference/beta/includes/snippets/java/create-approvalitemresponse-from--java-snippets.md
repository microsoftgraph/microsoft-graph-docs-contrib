---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApprovalItemResponse approvalItemResponse = new ApprovalItemResponse();
approvalItemResponse.setResponse("Approve");
approvalItemResponse.setComments("Approve this request");
ApprovalItemResponse result = graphClient.solutions().approval().approvalItems().byApprovalItemId("{approvalItem-id}").responses().post(approvalItemResponse);


```