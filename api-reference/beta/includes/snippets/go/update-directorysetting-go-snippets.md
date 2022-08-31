---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDirectorySetting()


settingValue := graphmodels.NewSettingValue()
additionalData := map[string]interface{}{
	"name" : "CustomBlockedWordsList", 
	"value" : "Contoso", 
}
settingValue.SetAdditionalData(additionalData)

values := []graphmodels.SettingValueable {
	settingValue,

}
requestBody.SetValues(values)

graphClient.SettingsById("directorySetting-id").Patch(requestBody)


```