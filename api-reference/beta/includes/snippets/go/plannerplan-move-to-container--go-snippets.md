---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphplanner "github.com/microsoftgraph/msgraph-beta-sdk-go/planner"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "\"string\"")

configuration := &graphplanner.PlannerPlanItemMoveToContainerRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphplanner.NewMoveToContainerPostRequestBody()
container := graphmodels.NewPlannerPlanContainer()
containerId := "groupId"
container.SetContainerId(&containerId) 
type := graphmodels.GROUP_PLANNERCONTAINERTYPE 
container.SetType(&type) 
requestBody.SetContainer(container)

moveToContainer, err := graphClient.Planner().Plans().ByPlannerPlanId("plannerPlan-id").MoveToContainer().Post(context.Background(), requestBody, configuration)


```