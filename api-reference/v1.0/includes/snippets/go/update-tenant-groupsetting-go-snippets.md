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


settingValue := graphmodels.NewSettingValue()
name := "AllowToAddGuests"
settingValue.SetName(&name) 
value := "false"
settingValue.SetValue(&value) 

values := []graphmodels.SettingValueable {
	settingValue,

}
requestBody.SetValues(values)

result, err := graphClient.GroupSettings().ByGroupSettingId("groupSetting-id").Patch(context.Background(), requestBody, nil)


```