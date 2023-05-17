---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

}
requestBody.SetReceivers(receivers)

result, err := graphClient.Communications().Calls().ByCallId("call-id").AudioRoutingGroups().Post(context.Background(), requestBody, nil)


```