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



projects, err := graphClient.Me().Profile().Projects().ByProjectParticipationId("projectParticipation-id").Get(context.Background(), nil)


```