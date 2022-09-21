---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPlannerRosterMember()
userId := "String"
requestBody.SetUserId(&userId) 

result, err := graphClient.Planner().RostersById("plannerRoster-id").Members().Post(context.Background(), requestBody, nil)


```