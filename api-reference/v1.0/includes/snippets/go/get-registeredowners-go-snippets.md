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



registeredOwners, err := graphClient.Devices().ByDeviceId("device-id").RegisteredOwners().Get(context.Background(), nil)


```