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



getActiveKey(), err := graphClient.TrustFramework().KeySets().ByTrustFrameworkKeySetId("trustFrameworkKeySet-id").GetActiveKey().Get(context.Background(), nil)


```