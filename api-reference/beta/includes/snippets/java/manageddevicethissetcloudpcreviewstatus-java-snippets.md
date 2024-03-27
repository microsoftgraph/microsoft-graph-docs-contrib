---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.manageddevices.item.setcloudpcreviewstatus.SetCloudPcReviewStatusPostRequestBody setCloudPcReviewStatusPostRequestBody = new com.microsoft.graph.beta.devicemanagement.manageddevices.item.setcloudpcreviewstatus.SetCloudPcReviewStatusPostRequestBody();
CloudPcReviewStatus reviewStatus = new CloudPcReviewStatus();
reviewStatus.setInReview(true);
reviewStatus.setUserAccessLevel(CloudPcUserAccessLevel.Restricted);
reviewStatus.setAzureStorageAccountId("/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview");
setCloudPcReviewStatusPostRequestBody.setReviewStatus(reviewStatus);
graphClient.deviceManagement().managedDevices().byManagedDeviceId("{managedDevice-id}").setCloudPcReviewStatus().post(setCloudPcReviewStatusPostRequestBody);


```