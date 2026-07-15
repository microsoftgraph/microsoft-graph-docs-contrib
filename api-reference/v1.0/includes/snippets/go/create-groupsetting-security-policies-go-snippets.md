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
templateId := "7e0abea2-5c20-405f-9658-bfc9a523fd49"
requestBody.SetTemplateId(&templateId) 


settingValue := graphmodels.NewSettingValue()
name := "AllowToAddGuests"
settingValue.SetName(&name) 
value := "false"
settingValue.SetValue(&value) 

values := []graphmodels.SettingValueable {
	settingValue,
}
requestBody.SetValues(values)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
settings, err := graphClient.Groups().ByGroupId("group-id").Settings().Post(context.Background(), requestBody, nil)


```