---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSetCloudPcReviewStatusPostRequestBody()
reviewStatus := graphmodels.NewCloudPcReviewStatus()
inReview := true
reviewStatus.SetInReview(&inReview) 
userAccessLevel := graphmodels.RESTRICTED_CLOUDPCUSERACCESSLEVEL 
reviewStatus.SetUserAccessLevel(&userAccessLevel) 
azureStorageAccountId := "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"
reviewStatus.SetAzureStorageAccountId(&azureStorageAccountId) 
requestBody.SetReviewStatus(reviewStatus)

graphClient.DeviceManagement().ManagedDevicesById("managedDevice-id").SetCloudPcReviewStatus().Post(requestBody)


```