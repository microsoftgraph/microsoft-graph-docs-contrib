---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDirectorySetting()
templateId := "62375ab9-6b52-47ed-826b-58e47e0e304b"
requestBody.SetTemplateId(&templateId) 


settingValue := graphmodels.NewSettingValue()
additionalData := map[string]interface{}{
	"name" : "GuestUsageGuidelinesUrl", 
	"value" : "https://privacy.contoso.com/privacystatement", 
}
settingValue.SetAdditionalData(additionalData)
settingValue1 := graphmodels.NewSettingValue()
additionalData := map[string]interface{}{
	"name" : "EnableMSStandardBlockedWords", 
	"value" : "true", 
}
settingValue1.SetAdditionalData(additionalData)
settingValue2 := graphmodels.NewSettingValue()
additionalData := map[string]interface{}{
	"name" : "EnableMIPLabels", 
	"value" : "true", 
}
settingValue2.SetAdditionalData(additionalData)
settingValue3 := graphmodels.NewSettingValue()
additionalData := map[string]interface{}{
	"name" : "PrefixSuffixNamingRequirement", 
	"value" : "[Contoso-][GroupName]", 
}
settingValue3.SetAdditionalData(additionalData)

values := []graphmodels.SettingValueable {
	settingValue,
	settingValue1,
	settingValue2,
	settingValue3,

}
requestBody.SetValues(values)

result, err := graphClient.Settings().Post(requestBody)


```