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



hostPorts, err := graphClient.Security().ThreatIntelligence().HostPorts().ByHostPortId("hostPort-id").Get(context.Background(), nil)


```