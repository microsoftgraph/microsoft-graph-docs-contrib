---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/planner"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphconfig.PlannerTaskItemAssignedToTaskBoardFormatRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerAssignedToTaskBoardTaskFormat()
orderHintsByAssignee := graphmodels.NewPlannerOrderHintsByAssignee()
additionalData := map[string]interface{}{
	"aaa27244-1db4-476a-a5cb-004607466324" : "8566473P 957764Jk!", 
}
orderHintsByAssignee.SetAdditionalData(additionalData)
requestBody.SetOrderHintsByAssignee(orderHintsByAssignee)

result, err := graphClient.Planner().Tasks().ByTaskId("plannerTask-id").AssignedToTaskBoardFormat().Patch(context.Background(), requestBody, configuration)


```