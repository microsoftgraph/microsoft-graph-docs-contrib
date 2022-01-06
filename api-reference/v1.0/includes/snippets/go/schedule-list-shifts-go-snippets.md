---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ShiftsRequestBuilderGetQueryParameters{
	Filter: "sharedShift/startDateTime%20ge%202019-03-11T00:00:00.000Z%20and%20sharedShift/endDateTime%20le%202019-03-18T00:00:00.000Z%20and%20draftShift/startDateTime%20ge%202019-03-11T00:00:00.000Z%20and%20draftShift/endDateTime%20le%202019-03-18T00:00:00.000Z",
}
options := &msgraphsdk.ShiftsRequestBuilderGetOptions{
	Q: requestParameters,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Schedule().Shifts().Get(options)


```