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



activity, err := graphClient.Teamwork().Devices().ByTeamworkDeviceId("teamworkDevice-id").Activity().Get(context.Background(), nil)


```