---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//industryData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewInboundFlow()
displayName := "My Inbound Flow"
requestBody.SetDisplayName(&displayName) 
effectiveDateTime , err := time.Parse(time.RFC3339, "2022-03-12T16:40:46.924769+05:30")
requestBody.SetEffectiveDateTime(&effectiveDateTime) 
expirationDateTime , err := time.Parse(time.RFC3339, "2023-03-12T16:40:46.924769+05:30")
requestBody.SetExpirationDateTime(&expirationDateTime) 

result, err := graphClient.External().IndustryData().InboundFlows().ByInboundFlowId("inboundFlow-id").Patch(context.Background(), requestBody, nil)


```