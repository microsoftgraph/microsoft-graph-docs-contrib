---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDirectorySetting()
requestBody.SetValues( []SettingValue {
	msgraphsdk.NewSettingValue(),
	SetAdditionalData(map[string]interface{}{
		"name": "CustomBlockedWordsList",
		"value": "Contoso",
	}
}
options := &msgraphsdk.DirectorySettingRequestBuilderPatchOptions{
	Body: requestBody,
}
directorySettingId := "directorySetting-id"
result, err := graphClient.SettingsById(&directorySettingId).Patch(options)


```