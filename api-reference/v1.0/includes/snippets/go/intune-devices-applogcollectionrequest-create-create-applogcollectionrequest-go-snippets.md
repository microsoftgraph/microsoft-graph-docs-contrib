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

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAppLogCollectionRequest()
status := graphmodels.COMPLETED_APPLOGUPLOADSTATE 
requestBody.SetStatus(&status) 
errorMessage := "Error Message value"
requestBody.SetErrorMessage(&errorMessage) 
customLogFolders := []string {
	"Custom Log Folders value",
}
requestBody.SetCustomLogFolders(customLogFolders)
completedDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:52.3534526-08:00")
requestBody.SetCompletedDateTime(&completedDateTime) 

result, err := graphClient.DeviceManagement().MobileAppTroubleshootingEvents().ByMobileAppTroubleshootingEventId("mobileAppTroubleshootingEvent-id").AppLogCollectionRequests().Post(context.Background(), requestBody, nil)


```