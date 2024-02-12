---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.manageddevices.bulksetcloudpcreviewstatus.BulkSetCloudPcReviewStatusPostRequestBody bulkSetCloudPcReviewStatusPostRequestBody = new com.microsoft.graph.beta.devicemanagement.manageddevices.bulksetcloudpcreviewstatus.BulkSetCloudPcReviewStatusPostRequestBody();
LinkedList<String> managedDeviceIds = new LinkedList<String>();
managedDeviceIds.add("30d0e128-de93-41dc-89ec-33d84bb662a0");
managedDeviceIds.add("7c82a3e3-9459-44e4-94d9-b92f93bf78dd");
bulkSetCloudPcReviewStatusPostRequestBody.setManagedDeviceIds(managedDeviceIds);
CloudPcReviewStatus reviewStatus = new CloudPcReviewStatus();
reviewStatus.setInReview(true);
reviewStatus.setUserAccessLevel(CloudPcUserAccessLevel.Restricted);
reviewStatus.setAzureStorageAccountId("/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview");
bulkSetCloudPcReviewStatusPostRequestBody.setReviewStatus(reviewStatus);
var result = graphClient.deviceManagement().managedDevices().bulkSetCloudPcReviewStatus().post(bulkSetCloudPcReviewStatusPostRequestBody);


```