---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAudioRoutingGroup()
id := "oneToOne"
requestBody.SetId(&id) 
routingMode := graphmodels.ONETOONE_ROUTINGMODE 
requestBody.SetRoutingMode(&routingMode) 
sources := []string {
	"632899f8-2ea1-4604-8413-27bd2892079f",
}
requestBody.SetSources(sources)
receivers := []string {
	"550fae72-d251-43ec-868c-373732c2704f",
	"72f988bf-86f1-41af-91ab-2d7cd011db47",
}
requestBody.SetReceivers(receivers)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
audioRoutingGroups, err := graphClient.Communications().Calls().ByCallId("call-id").AudioRoutingGroups().ByAudioRoutingGroupId("audioRoutingGroup-id").Patch(context.Background(), requestBody, nil)


```