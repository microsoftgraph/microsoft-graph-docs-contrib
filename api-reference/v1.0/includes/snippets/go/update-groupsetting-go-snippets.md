---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewGroupSetting()
requestBody.SetValues( []SettingValue {
	msgraphsdk.NewSettingValue(),
	SetAdditionalData(map[string]interface{}{
		"name": "AllowToAddGuests",
		"value": "true",
	}
}
options := &msgraphsdk.GroupSettingRequestBuilderPatchOptions{
	Body: requestBody,
}
groupId := "group-id"
groupSettingId := "groupSetting-id"
graphClient.GroupsById(&groupId).SettingsById(&groupSettingId).Patch(options)


```