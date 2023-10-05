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



hostPairs, err := graphClient.Security().ThreatIntelligence().HostPairs().ByHostPairId("hostPair-id").Get(context.Background(), nil)


```