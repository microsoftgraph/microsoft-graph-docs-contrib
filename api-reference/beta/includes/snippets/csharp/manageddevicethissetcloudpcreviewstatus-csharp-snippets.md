---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.ManagedDevices.Item.SetCloudPcReviewStatus;
using Microsoft.Graph.Beta.Models;

var requestBody = new SetCloudPcReviewStatusPostRequestBody
{
	ReviewStatus = new CloudPcReviewStatus
	{
		InReview = true,
		UserAccessLevel = CloudPcUserAccessLevel.Restricted,
		AzureStorageAccountId = "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"].SetCloudPcReviewStatus.PostAsync(requestBody);


```