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



hostComponents, err := graphClient.Security().ThreatIntelligence().HostComponents().ByHostComponentId("hostComponent-id").Get(context.Background(), nil)


```