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



vppTokens, err := graphClient.DeviceAppManagement().VppTokens().ByVppTokenId("vppToken-id").Get(context.Background(), nil)


```