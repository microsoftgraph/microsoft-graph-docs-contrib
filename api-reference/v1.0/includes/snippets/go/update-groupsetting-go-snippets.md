---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroupSetting()


settingValue := graphmodels.NewSettingValue()
name := "AllowToAddGuests"
settingValue.SetName(&name) 
value := "true"
settingValue.SetValue(&value) 

values := []graphmodels.SettingValueable {
	settingValue,

}
requestBody.SetValues(values)

graphClient.GroupsById("group-id").SettingsById("groupSetting-id").Patch(context.Background(), requestBody, nil)


```