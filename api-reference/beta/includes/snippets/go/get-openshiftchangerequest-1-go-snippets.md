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



openShiftChangeRequests, err := graphClient.Teams().ByTeamId("team-id").Schedule().OpenShiftChangeRequests().ByOpenShiftChangeRequestId("openShiftChangeRequest-id").Get(context.Background(), nil)


```