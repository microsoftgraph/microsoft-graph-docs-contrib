---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphdevicemanagement.NewSetReviewStatusPostRequestBody()
reviewStatus := graphmodels.NewCloudPcReviewStatus()
inReview := true
reviewStatus.SetInReview(&inReview) 
userAccessLevel := graphmodels.RESTRICTED_CLOUDPCUSERACCESSLEVEL 
reviewStatus.SetUserAccessLevel(&userAccessLevel) 
azureStorageAccountId := "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"
reviewStatus.SetAzureStorageAccountId(&azureStorageAccountId) 
accessTier := graphmodels.HOT_CLOUDPCBLOBACCESSTIER 
reviewStatus.SetAccessTier(&accessTier) 
requestBody.SetReviewStatus(reviewStatus)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().ByCloudPCId("cloudPC-id").SetReviewStatus().Post(context.Background(), requestBody, nil)


```