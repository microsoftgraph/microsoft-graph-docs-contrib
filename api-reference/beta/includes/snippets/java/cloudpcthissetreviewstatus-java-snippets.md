---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.cloudpcs.item.setreviewstatus.SetReviewStatusPostRequestBody setReviewStatusPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.cloudpcs.item.setreviewstatus.SetReviewStatusPostRequestBody();
CloudPcReviewStatus reviewStatus = new CloudPcReviewStatus();
reviewStatus.setInReview(true);
reviewStatus.setUserAccessLevel(CloudPcUserAccessLevel.Restricted);
reviewStatus.setAzureStorageAccountId("/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview");
setReviewStatusPostRequestBody.setReviewStatus(reviewStatus);
graphClient.deviceManagement().virtualEndpoint().cloudPCs().byCloudPCId("{cloudPC-id}").setReviewStatus().post(setReviewStatusPostRequestBody);


```