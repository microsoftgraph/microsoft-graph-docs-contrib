---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"enabled": true,
	"timeZone": "America/Chicago",
	"provisionStatus": "Completed",
	"provisionStatusCode": nil,
	"openShiftsEnabled": true,
	"swapShiftsRequestsEnabled": true,
	"offerShiftRequestsEnabled": true,
	"timeOffRequestsEnabled": true,
	"timeClockEnabled": true,
}
teamId := "team-id"
graphClient.TeamsById(&teamId).Schedule().Put(requestBody)


```