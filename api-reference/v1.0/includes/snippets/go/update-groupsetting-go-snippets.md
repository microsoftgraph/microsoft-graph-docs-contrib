---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

settings, err := graphClient.Groups().ByGroupId("group-id").Settings().ByGroupSettingId("groupSetting-id").Patch(context.Background(), requestBody, nil)


```