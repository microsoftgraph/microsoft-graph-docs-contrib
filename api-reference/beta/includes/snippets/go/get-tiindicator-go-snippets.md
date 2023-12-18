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



tiIndicators, err := graphClient.Security().TiIndicators().ByTiIndicatorId("tiIndicator-id").Get(context.Background(), nil)


```