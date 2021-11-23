---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"displayName": "Cashiers",
	"isActive": true,
	"userIds":  []String {
		"c5d0c76b-80c4-481c-be50-923cd8d680a1",
		"2a4296b3-a28a-44ba-bc66-0274b9b95851",
	}
}
headers := map[string]string{
	"Prefer": "return=representation"
}
options := &msgraphsdk.SchedulingGroupRequestBuilderPutOptions{
	Body: requestBody,
	H: headers,
}
teamId := "team-id"
schedulingGroupId := "schedulingGroup-id"
graphClient.TeamsById(&teamId).Schedule().SchedulingGroupsById(&schedulingGroupId).Put(options)


```