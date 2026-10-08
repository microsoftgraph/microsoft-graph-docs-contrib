---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewGroupSetting()
templateId := "d209f6fa-3839-4d70-b83f-60b1c64d0e8f"
requestBody.SetTemplateId(&templateId) 


settingValue := graphmodels.NewSettingValue()
name := "EnableMIPLabels"
settingValue.SetName(&name) 
value := "true"
settingValue.SetValue(&value) 

values := []graphmodels.SettingValueable {
	settingValue,
}
requestBody.SetValues(values)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groupSettings, err := graphClient.GroupSettings().Post(context.Background(), requestBody, nil)


```