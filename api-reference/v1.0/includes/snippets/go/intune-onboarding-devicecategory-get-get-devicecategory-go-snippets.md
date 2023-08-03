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



deviceCategories, err := graphClient.DeviceManagement().DeviceCategories().ByDeviceCategoryId("deviceCategory-id").Get(context.Background(), nil)


```