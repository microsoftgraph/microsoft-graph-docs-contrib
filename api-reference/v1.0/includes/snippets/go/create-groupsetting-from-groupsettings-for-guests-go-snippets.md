---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewGroupSetting()
displayName := "Group.Unified.Guest"
requestBody.SetDisplayName(&displayName)
templateId := "08d542b9-071f-4e16-94b0-74abb372e3d9"
requestBody.SetTemplateId(&templateId)
requestBody.SetValues( []SettingValue {
	msgraphsdk.NewSettingValue(),
	SetAdditionalData(map[string]interface{}{
		"name": "AllowToAddGuests",
		"value": "false",
	}
}
options := &msgraphsdk.SettingsRequestBuilderPostOptions{
	Body: requestBody,
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Settings().Post(options)


```