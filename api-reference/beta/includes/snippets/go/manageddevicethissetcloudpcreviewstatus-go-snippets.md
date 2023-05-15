---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/ManagedDevices/Item/SetCloudPcReviewStatus"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSetCloudPcReviewStatusPostRequestBody()
reviewStatus := graphmodels.NewCloudPcReviewStatus()
inReview := true
reviewStatus.SetInReview(&inReview) 
userAccessLevel := graphmodels.RESTRICTED_CLOUDPCUSERACCESSLEVEL 
reviewStatus.SetUserAccessLevel(&userAccessLevel) 
azureStorageAccountId := "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"
reviewStatus.SetAzureStorageAccountId(&azureStorageAccountId) 
requestBody.SetReviewStatus(reviewStatus)

graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").SetCloudPcReviewStatus().Post(context.Background(), requestBody, nil)


```