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



detectedApps, err := graphClient.DeviceManagement().DetectedApps().ByDetectedAppId("detectedApp-id").Get(context.Background(), nil)


```