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



components, err := graphClient.Security().ThreatIntelligence().Hosts().ByHostId("host-id").Components().Get(context.Background(), nil)


```