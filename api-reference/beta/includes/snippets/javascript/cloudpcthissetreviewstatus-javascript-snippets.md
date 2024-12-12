---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setReviewStatus = {
  reviewStatus: {
    inReview: true,
    userAccessLevel: 'restricted',
    azureStorageAccountId: '/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview'
  }
};

await client.api('/deviceManagement/virtualEndpoint/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/setReviewStatus')
	.version('beta')
	.post(setReviewStatus);

```