---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPlannerRoster()
"@odata.type" := "#microsoft.graph.plannerRoster"
requestBody.Set"@odata.type"(&"@odata.type") 

result, err := graphClient.Planner().Rosters().Post(requestBody)


```