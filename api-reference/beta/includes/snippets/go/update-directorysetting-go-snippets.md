---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

settings, err := graphClient.Settings().ByDirectorySettingId("directorySetting-id").Patch(context.Background(), requestBody, nil)


```