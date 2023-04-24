---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//industryData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewInboundFlow()
displayName := "Updated flow name"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.External().IndustryData().InboundFlows().ByInboundFlowId("inboundFlow-id").Patch(context.Background(), requestBody, nil)


```