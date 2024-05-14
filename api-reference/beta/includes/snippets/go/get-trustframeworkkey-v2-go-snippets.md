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



keys_v2, err := graphClient.TrustFramework().KeySets().ByTrustFrameworkKeySetId("trustFrameworkKeySet-id").Keys_v2().ByTrustFrameworkKey_v2Kid("trustFrameworkKey_v2-kid").Get(context.Background(), nil)


```