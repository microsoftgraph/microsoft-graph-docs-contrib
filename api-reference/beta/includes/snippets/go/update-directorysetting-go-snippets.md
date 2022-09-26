---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDirectorySetting()


settingValue := graphmodels.NewSettingValue()
name := "CustomBlockedWordsList"
settingValue.SetName(&name) 
value := "Contoso"
settingValue.SetValue(&value) 

values := []graphmodels.SettingValueable {
	settingValue,

}
requestBody.SetValues(values)

graphClient.SettingsById("directorySetting-id").Patch(context.Background(), requestBody, nil)


```