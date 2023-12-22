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



passiveDns, err := graphClient.Security().ThreatIntelligence().Hosts().ByHostId("host-id").PassiveDns().Get(context.Background(), nil)


```