---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



sharedUseServicePlans, err := graphClient.DeviceManagement().VirtualEndpoint().SharedUseServicePlans().Get(context.Background(), nil)


```