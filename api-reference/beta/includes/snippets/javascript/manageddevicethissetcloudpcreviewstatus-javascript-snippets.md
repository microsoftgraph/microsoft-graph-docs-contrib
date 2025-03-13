---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setCloudPcReviewStatus = {
  reviewStatus: {
    inReview: true,
    userAccessLevel: 'restricted',
    azureStorageAccountId: '/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview'
  }
};

await client.api('/deviceManagement/managedDevices/185f01c2de954929afb129392e5d9f47/setCloudPcReviewStatus')
	.version('beta')
	.post(setCloudPcReviewStatus);

```