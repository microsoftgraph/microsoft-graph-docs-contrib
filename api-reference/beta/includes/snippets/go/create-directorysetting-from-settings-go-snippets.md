---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewDirectorySetting()
displayName := "Group.Unified"
requestBody.SetDisplayName(&displayName)
templateId := "62375ab9-6b52-47ed-826b-58e47e0e304b"
requestBody.SetTemplateId(&templateId)
requestBody.SetValues( []SettingValue {
	msgraphsdk.NewSettingValue(),
	SetAdditionalData(map[string]interface{}{
		"name": "GuestUsageGuidelinesUrl",
		"value": "https://privacy.contoso.com/privacystatement",
	}
	msgraphsdk.NewSettingValue(),
	SetAdditionalData(map[string]interface{}{
		"name": "EnableMSStandardBlockedWords",
		"value": "true",
	}
	msgraphsdk.NewSettingValue(),
	SetAdditionalData(map[string]interface{}{
		"name": "EnableMIPLabels",
		"value": "true",
	}
	msgraphsdk.NewSettingValue(),
	SetAdditionalData(map[string]interface{}{
		"name": "PrefixSuffixNamingRequirement",
		"value": "[Contoso-][GroupName]",
	}
}
options := &msgraphsdk.SettingsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Settings().Post(options)


```