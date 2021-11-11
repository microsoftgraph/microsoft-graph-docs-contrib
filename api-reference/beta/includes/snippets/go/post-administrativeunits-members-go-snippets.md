---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#Microsoft.Graph.Group",
	"description": "Self help community for golf",
	"displayName": "Golf Assist",
	"groupTypes":  []String {
		"Unified",
	}
	"mailEnabled": true,
	"mailNickname": "golfassist",
	"securityEnabled": false,
}
options := &msgraphsdk.MembersRequestBuilderPostOptions{
	Body: requestBody,
}
administrativeUnitId := "administrativeUnit-id"
graphClient.AdministrativeUnitsById(&administrativeUnitId).Members().Post(options)


```