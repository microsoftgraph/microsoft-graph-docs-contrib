---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewGroupSetting()
templateId := "08d542b9-071f-4e16-94b0-74abb372e3d9"
requestBody.SetTemplateId(&templateId)
requestBody.SetValues( []SettingValue {
	msgraphsdk.NewSettingValue(),
	SetAdditionalData(map[string]interface{}{
		"name": "AllowToAddGuests",
		"value": "false",
	}
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Settings().Post(requestBody)


```