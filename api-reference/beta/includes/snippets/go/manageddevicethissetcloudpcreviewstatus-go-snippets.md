---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewReviewStatusRequestBody()
reviewStatus := msgraphsdk.NewCloudPcReviewStatus()
requestBody.SetReviewStatus(reviewStatus)
inReview := true
reviewStatus.SetInReview(&inReview)
userAccessLevel := "restricted"
reviewStatus.SetUserAccessLevel(&userAccessLevel)
azureStorageAccountId := "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"
reviewStatus.SetAzureStorageAccountId(&azureStorageAccountId)
managedDeviceId := "managedDevice-id"
graphClient.DeviceManagement().ManagedDevicesById(&managedDeviceId).SetCloudPcReviewStatus(managedDevice-id).Post(requestBody)


```