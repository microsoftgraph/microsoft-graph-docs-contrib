---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcReviewStatus reviewStatus = new CloudPcReviewStatus();
reviewStatus.inReview = true;
reviewStatus.userAccessLevel = CloudPcUserAccessLevel.RESTRICTED;
reviewStatus.azureStorageAccountId = "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview";

graphClient.deviceManagement().managedDevices("185f01c2de954929afb129392e5d9f47")
	.setCloudPcReviewStatus(ManagedDeviceSetCloudPcReviewStatusParameterSet
		.newBuilder()
		.withReviewStatus(reviewStatus)
		.build())
	.buildRequest()
	.post();

```