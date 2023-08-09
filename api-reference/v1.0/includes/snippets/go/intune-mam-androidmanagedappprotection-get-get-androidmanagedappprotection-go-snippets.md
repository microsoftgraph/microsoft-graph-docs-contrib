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



androidManagedAppProtections, err := graphClient.DeviceAppManagement().AndroidManagedAppProtections().ByAndroidManagedAppProtectionId("androidManagedAppProtection-id").Get(context.Background(), nil)


```