---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"userId": "70e47528-2fae-42b5-9d8e-ee73ccd90603",
	"state": "clockedOut",
	"confirmedBy": "None",
	"notes": nil,
	"breaks":  []Object {
	}
}
options := &msgraphsdk.TimeCardRequestBuilderPutOptions{
	Body: requestBody,
}
teamId := "team-id"
timeCardId := "timeCard-id"
graphClient.TeamsById(&teamId).Schedule().TimeCardsById(&timeCardId).Put(options);


```