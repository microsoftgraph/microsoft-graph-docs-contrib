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



inboundFlows, err := graphClient.External().IndustryData().InboundFlows().ByInboundFlowId("inboundFlow-id").Get(context.Background(), nil)


```