---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroupSetting()
templateId := "08d542b9-071f-4e16-94b0-74abb372e3d9"
requestBody.SetTemplateId(&templateId) 


settingValue := graphmodels.NewSettingValue()
additionalData := map[string]interface{}{
	"name" : "AllowToAddGuests", 
	"value" : "false", 
}
settingValue.SetAdditionalData(additionalData)

values := []graphmodels.SettingValueable {
	settingValue,

}
requestBody.SetValues(values)

result, err := graphClient.GroupsById("group-id").Settings().Post(requestBody)


```