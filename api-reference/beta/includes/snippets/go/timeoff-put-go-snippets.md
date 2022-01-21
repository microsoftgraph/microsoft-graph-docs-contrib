---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"userId": "c5d0c76b-80c4-481c-be50-923cd8d680a1",
}
headers := map[string]string{
	"Prefer": "return=representation"
}
options := &msgraphsdk.TimeOffRequestBuilderPutOptions{
	Body: requestBody,
	H: headers,
}
teamId := "team-id"
timeOffId := "timeOff-id"
graphClient.TeamsById(&teamId).Schedule().TimesOffById(&timeOffId).Put(options)


```