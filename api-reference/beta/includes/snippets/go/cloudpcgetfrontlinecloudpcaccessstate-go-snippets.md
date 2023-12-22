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



getFrontlineCloudPcAccessState, err := graphClient.Me().CloudPCs().ByCloudPCId("cloudPC-id").GetFrontlineCloudPcAccessState().Get(context.Background(), nil)


```