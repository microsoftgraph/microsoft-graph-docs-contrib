---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMobileAppTroubleshootingEvent()

mobileAppTroubleshootingEvents, err := graphClient.DeviceManagement().MobileAppTroubleshootingEvents().ByMobileAppTroubleshootingEventId("mobileAppTroubleshootingEvent-id").Patch(context.Background(), requestBody, nil)


```