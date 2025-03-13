---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphplanner "github.com/microsoftgraph/msgraph-beta-sdk-go/planner"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "\"string\"")

configuration := &graphplanner.PlansItemMoveToContainerRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphplanner.NewMoveToContainerPostRequestBody()
container := graphmodels.NewPlannerPlanContainer()
containerId := "groupId"
container.SetContainerId(&containerId) 
type := graphmodels.GROUP_PLANNERCONTAINERTYPE 
container.SetType(&type) 
requestBody.SetContainer(container)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
moveToContainer, err := graphClient.Planner().Plans().ByPlannerPlanId("plannerPlan-id").MoveToContainer().Post(context.Background(), requestBody, configuration)


```