---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsindustrydata.NewInboundFlow()
displayName := "Updated flow name"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.External().IndustryData().InboundFlows().ByInboundFlowId("inboundFlow-id").Patch(context.Background(), requestBody, nil)


```