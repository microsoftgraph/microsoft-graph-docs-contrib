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



cloudPcId := "{cloudPcId}"
graphClient.DeviceManagement().VirtualEndpoint().Reports().GetRealTimeRemoteConnectionLatencyWithCloudPcId(&cloudPcId).Get(context.Background(), nil)


```