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



intelProfiles, err := graphClient.Security().ThreatIntelligence().IntelProfiles().ByIntelligenceProfileId("intelligenceProfile-id").Get(context.Background(), nil)


```