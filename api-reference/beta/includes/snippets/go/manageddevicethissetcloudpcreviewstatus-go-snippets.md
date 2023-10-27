---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewSetCloudPcReviewStatusPostRequestBody()
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