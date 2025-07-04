---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphtemplates "github.com/microsoftgraph/msgraph-beta-sdk-go/templates"
	  //other-imports
)

requestBody := graphtemplates.NewCreateDeviceFromTemplatePostRequestBody()
externalDeviceId := "2fa9424e-7ab0-4a22-8c90-2a20d15d8183"
requestBody.SetExternalDeviceId(&externalDeviceId) 
operatingSystemVersion := "Ubuntu 18.04"
requestBody.SetOperatingSystemVersion(&operatingSystemVersion) 
externalSourceName := "unknown"
requestBody.SetExternalSourceName(&externalSourceName) 
accountEnabled := false
requestBody.SetAccountEnabled(&accountEnabled) 
alternativeNames := []string {
	"/subscriptions/00001111-aaaa-2222-bbbb-3333cccc4444/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1",
}
requestBody.SetAlternativeNames(alternativeNames)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
createDeviceFromTemplate, err := graphClient.Templates().DeviceTemplates().ByDeviceTemplateId("deviceTemplate-id").CreateDeviceFromTemplate().Post(context.Background(), requestBody, nil)


```