---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPlannerRosterMember()
"@odata.type" := "#microsoft.graph.plannerRosterMember"
requestBody.Set"@odata.type"(&"@odata.type") 
userId := "String"
requestBody.SetUserId(&userId) 

result, err := graphClient.Planner().RostersById("plannerRoster-id").Members().Post(requestBody)


```