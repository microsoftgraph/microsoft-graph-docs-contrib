---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPlannerRosterMember()
userId := "String"
requestBody.SetUserId(&userId)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.plannerRosterMember",
}
options := &msgraphsdk.MembersRequestBuilderPostOptions{
	Body: requestBody,
}
plannerRosterId := "plannerRoster-id"
result, err := graphClient.Planner().RostersById(&plannerRosterId).Members().Post(options)


```