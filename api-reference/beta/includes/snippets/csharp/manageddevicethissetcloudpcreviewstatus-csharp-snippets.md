---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.ManagedDevices.Item.SetCloudPcReviewStatus.SetCloudPcReviewStatusPostRequestBody
{
	ReviewStatus = new CloudPcReviewStatus
	{
		InReview = true,
		UserAccessLevel = CloudPcUserAccessLevel.Restricted,
		AzureStorageAccountId = "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview",
	},
};
await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"].SetCloudPcReviewStatus.PostAsync(requestBody);


```