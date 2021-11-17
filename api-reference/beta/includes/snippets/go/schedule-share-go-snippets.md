---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
notifyTeam := true
requestBody.SetNotifyTeam(&notifyTeam)
startDateTime, err := time.Parse(time.RFC3339, "2018-10-08T00:00:00.000Z")
requestBody.SetStartDateTime(&startDateTime)
endDateTime, err := time.Parse(time.RFC3339, "2018-10-15T00:00:00.000Z")
requestBody.SetEndDateTime(&endDateTime)
options := &msgraphsdk.ShareRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
graphClient.TeamsById(&teamId).Schedule().Share().Post(options)


```