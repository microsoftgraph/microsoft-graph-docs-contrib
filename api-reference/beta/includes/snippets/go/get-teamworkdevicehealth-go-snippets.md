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



health, err := graphClient.Teamwork().Devices().ByTeamworkDeviceId("teamworkDevice-id").Health().Get(context.Background(), nil)


```