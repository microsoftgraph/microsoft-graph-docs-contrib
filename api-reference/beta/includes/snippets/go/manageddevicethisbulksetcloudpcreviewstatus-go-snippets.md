---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/ManagedDevices/BulkSetCloudPcReviewStatus"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBulkSetCloudPcReviewStatusPostRequestBody()
managedDeviceIds := []string {
	"30d0e128-de93-41dc-89ec-33d84bb662a0",
	"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",

}
requestBody.SetManagedDeviceIds(managedDeviceIds)
reviewStatus := graphmodels.NewCloudPcReviewStatus()
inReview := true
reviewStatus.SetInReview(&inReview) 
userAccessLevel := graphmodels.RESTRICTED_CLOUDPCUSERACCESSLEVEL 
reviewStatus.SetUserAccessLevel(&userAccessLevel) 
azureStorageAccountId := "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"
reviewStatus.SetAzureStorageAccountId(&azureStorageAccountId) 
requestBody.SetReviewStatus(reviewStatus)

result, err := graphClient.DeviceManagement().ManagedDevices().BulkSetCloudPcReviewStatus().Post(context.Background(), requestBody, nil)


```