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



getSupportedCloudPcRemoteActions(), err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().ByCloudPCId("cloudPC-id").GetSupportedCloudPcRemoteActions().Get(context.Background(), nil)


```