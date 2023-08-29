---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  graphplanner "github.com/microsoftgraph/msgraph-sdk-go/planner"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphplanner.PlannerTaskItemRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerTask()
assignments := graphmodels.NewPlannerAssignments()
additionalData := map[string]interface{}{
"fbab97d0-4932-4511-b675-204639209557" := graphmodels.New()
orderHint := "N9917 U2883!"
"fbab97d0-4932-4511-b675-204639209557".SetOrderHint(&orderHint) 
	assignments.Set"fbab97d0-4932-4511-b675-204639209557"("fbab97d0-4932-4511-b675-204639209557")
}
assignments.SetAdditionalData(additionalData)
requestBody.SetAssignments(assignments)
appliedCategories := graphmodels.NewPlannerAppliedCategories()
additionalData := map[string]interface{}{
	category3 := true
appliedCategories.SetCategory3(&category3) 
	category4 := false
appliedCategories.SetCategory4(&category4) 
}
appliedCategories.SetAdditionalData(additionalData)
requestBody.SetAppliedCategories(appliedCategories)

tasks, err := graphClient.Planner().Tasks().ByPlannerTaskId("plannerTask-id").Patch(context.Background(), requestBody, configuration)


```