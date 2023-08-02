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



createDownloadUrl, err := graphClient.DeviceManagement().MobileAppTroubleshootingEvents().ByMobileAppTroubleshootingEventId("mobileAppTroubleshootingEvent-id").AppLogCollectionRequests().ByAppLogCollectionRequestId("appLogCollectionRequest-id").CreateDownloadUrl().Post(context.Background(), nil)


```