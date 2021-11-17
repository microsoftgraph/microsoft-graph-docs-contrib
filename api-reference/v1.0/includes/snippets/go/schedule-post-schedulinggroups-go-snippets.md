---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewSchedulingGroup()
displayName := "Cashiers"
requestBody.SetDisplayName(&displayName)
isActive := true
requestBody.SetIsActive(&isActive)
requestBody.SetUserIds( []String {
	"c5d0c76b-80c4-481c-be50-923cd8d680a1",
	"2a4296b3-a28a-44ba-bc66-0274b9b95851",
}
options := &msgraphsdk.SchedulingGroupsRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Schedule().SchedulingGroups().Post(options)


```