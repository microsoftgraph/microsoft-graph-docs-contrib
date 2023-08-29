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



operations, err := graphClient.Teamwork().Devices().ByTeamworkDeviceId("teamworkDevice-id").Operations().ByTeamworkDeviceOperationId("teamworkDeviceOperation-id").Get(context.Background(), nil)


```