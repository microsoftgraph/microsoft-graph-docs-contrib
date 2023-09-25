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



hostTrackers, err := graphClient.Security().ThreatIntelligence().HostTrackers().ByHostTrackerId("hostTracker-id").Get(context.Background(), nil)


```