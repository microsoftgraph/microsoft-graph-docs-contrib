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



whois, err := graphClient.Security().ThreatIntelligence().Hosts().ByHostId("host-id").Whois().Get(context.Background(), nil)


```