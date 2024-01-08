---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



appLogCollectionRequests, err := graphClient.DeviceManagement().MobileAppTroubleshootingEvents().ByMobileAppTroubleshootingEventId("mobileAppTroubleshootingEvent-id").AppLogCollectionRequests().Get(context.Background(), nil)


```