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



getShiftWorkCloudPcAccessState(), err := graphClient.Me().CloudPCs().ByCloudPCId("cloudPC-id").GetShiftWorkCloudPcAccessState().Get(context.Background(), nil)


```