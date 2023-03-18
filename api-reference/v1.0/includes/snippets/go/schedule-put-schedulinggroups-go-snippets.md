---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")

configuration := &graphconfig.TeamItemScheduleSchedulingGroupItemRequestBuilderPutRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewSchedulingGroup()
additionalData := map[string]interface{}{
	"displayName" : "Cashiers", 
	isActive := true
requestBody.SetIsActive(&isActive) 
	userIds := []string {
		"c5d0c76b-80c4-481c-be50-923cd8d680a1",
		"2a4296b3-a28a-44ba-bc66-0274b9b95851",

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.TeamsById("team-id").Schedule().SchedulingGroupsById("schedulingGroup-id").Put(context.Background(), requestBody, configuration)


```