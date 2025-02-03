---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewDeviceAppManagement()
microsoftStoreForBusinessLastSuccessfulSyncDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:45.2453148-08:00")
requestBody.SetMicrosoftStoreForBusinessLastSuccessfulSyncDateTime(&microsoftStoreForBusinessLastSuccessfulSyncDateTime) 
isEnabledForMicrosoftStoreForBusiness := true
requestBody.SetIsEnabledForMicrosoftStoreForBusiness(&isEnabledForMicrosoftStoreForBusiness) 
microsoftStoreForBusinessLanguage := "Microsoft Store For Business Language value"
requestBody.SetMicrosoftStoreForBusinessLanguage(&microsoftStoreForBusinessLanguage) 
microsoftStoreForBusinessLastCompletedApplicationSyncTime , err := time.Parse(time.RFC3339, "2017-01-01T00:02:00.0421137-08:00")
requestBody.SetMicrosoftStoreForBusinessLastCompletedApplicationSyncTime(&microsoftStoreForBusinessLastCompletedApplicationSyncTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceAppManagement, err := graphClient.DeviceAppManagement().Patch(context.Background(), requestBody, nil)


```