---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceAppManagement()
microsoftStoreForBusinessLastSuccessfulSyncDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:45.2453148-08:00")
requestBody.SetMicrosoftStoreForBusinessLastSuccessfulSyncDateTime(&microsoftStoreForBusinessLastSuccessfulSyncDateTime) 
isEnabledForMicrosoftStoreForBusiness := true
requestBody.SetIsEnabledForMicrosoftStoreForBusiness(&isEnabledForMicrosoftStoreForBusiness) 
microsoftStoreForBusinessLanguage := "Microsoft Store For Business Language value"
requestBody.SetMicrosoftStoreForBusinessLanguage(&microsoftStoreForBusinessLanguage) 
microsoftStoreForBusinessLastCompletedApplicationSyncTime , err := time.Parse(time.RFC3339, "2017-01-01T00:02:00.0421137-08:00")
requestBody.SetMicrosoftStoreForBusinessLastCompletedApplicationSyncTime(&microsoftStoreForBusinessLastCompletedApplicationSyncTime) 

result, err := graphClient.DeviceAppManagement().Patch(context.Background(), requestBody, nil)


```