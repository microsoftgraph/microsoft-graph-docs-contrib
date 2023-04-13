---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var managedDeviceIds = new List<String>()
{
	"30d0e128-de93-41dc-89ec-33d84bb662a0",
	"7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
};

var reviewStatus = new CloudPcReviewStatus
{
	InReview = true,
	UserAccessLevel = CloudPcUserAccessLevel.Restricted,
	AzureStorageAccountId = "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"
};

await graphClient.DeviceManagement.ManagedDevices
	.BulkSetCloudPcReviewStatus(managedDeviceIds,reviewStatus)
	.Request()
	.PostAsync();

```