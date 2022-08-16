---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroupSetting()


settingValue := graphmodels.NewSettingValue()
additionalData := map[string]interface{}{
	"name" : "AllowToAddGuests", 
	"value" : "true", 
}
settingValue.SetAdditionalData(additionalData)

values := []graphmodels.SettingValueable {
	settingValue,

}
requestBody.SetValues(values)

graphClient.GroupsById("group-id").SettingsById("groupSetting-id").Patch(requestBody)


```