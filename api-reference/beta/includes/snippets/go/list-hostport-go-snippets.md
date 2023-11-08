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



ports, err := graphClient.Security().ThreatIntelligence().Hosts().ByHostId("host-id").Ports().Get(context.Background(), nil)


```