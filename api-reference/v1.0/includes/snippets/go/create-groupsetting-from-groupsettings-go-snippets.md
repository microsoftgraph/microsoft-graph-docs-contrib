---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGroupSetting()
templateId := "62375ab9-6b52-47ed-826b-58e47e0e304b"
requestBody.SetTemplateId(&templateId) 


settingValue := graphmodels.NewSettingValue()
name := "GuestUsageGuidelinesUrl"
settingValue.SetName(&name) 
value := "https://privacy.contoso.com/privacystatement"
settingValue.SetValue(&value) 
settingValue1 := graphmodels.NewSettingValue()
name := "EnableMSStandardBlockedWords"
settingValue1.SetName(&name) 
value := "true"
settingValue1.SetValue(&value) 
settingValue2 := graphmodels.NewSettingValue()
name := "EnableMIPLabels"
settingValue2.SetName(&name) 
value := "true"
settingValue2.SetValue(&value) 
settingValue3 := graphmodels.NewSettingValue()
name := "PrefixSuffixNamingRequirement"
settingValue3.SetName(&name) 
value := "[Contoso-][GroupName]"
settingValue3.SetValue(&value) 

values := []graphmodels.SettingValueable {
	settingValue,
	settingValue1,
	settingValue2,
	settingValue3,

}
requestBody.SetValues(values)

result, err := graphClient.GroupSettings().Post(context.Background(), requestBody, nil)


```