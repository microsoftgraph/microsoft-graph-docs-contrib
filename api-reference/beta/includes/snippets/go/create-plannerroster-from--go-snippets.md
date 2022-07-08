---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPlannerRoster()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.plannerRoster",
}
result, err := graphClient.Planner().Rosters().Post(requestBody)


```