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



mobileAppTroubleshootingEvents, err := graphClient.DeviceManagement().MobileAppTroubleshootingEvents().Get(context.Background(), nil)


```