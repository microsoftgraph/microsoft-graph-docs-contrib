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



mobileApps, err := graphClient.DeviceAppManagement().MobileApps().ByMobileAppId("mobileApp-id").Get(context.Background(), nil)


```