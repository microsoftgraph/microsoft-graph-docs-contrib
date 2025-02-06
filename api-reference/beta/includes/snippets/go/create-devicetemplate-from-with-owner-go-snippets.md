---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewDeviceTemplate()
mutualTlsOauthConfigurationId := "00001111-aaaa-2222-bbbb-3333cccc4444"
requestBody.SetMutualTlsOauthConfigurationId(&mutualTlsOauthConfigurationId) 
mutualTlsOauthConfigurationTenantId := "00001111-aaaa-2222-bbbb-3333cccc4445"
requestBody.SetMutualTlsOauthConfigurationTenantId(&mutualTlsOauthConfigurationTenantId) 
deviceAuthority := "Lakeshore Retail"
requestBody.SetDeviceAuthority(&deviceAuthority) 
manufacturer := "Tailwind Traders"
requestBody.SetManufacturer(&manufacturer) 
model := "DeepFreezerModelAB"
requestBody.SetModel(&model) 
operatingSystem := "WindowsIoT"
requestBody.SetOperatingSystem(&operatingSystem) 
additionalData := map[string]interface{}{
	odataBind := []string {
		"https://graph.microsoft.com/beta/users/aaaaaaaa-bbbb-cccc-1111-222222222222",
	}
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceTemplates, err := graphClient.Directory().Templates().DeviceTemplates().Post(context.Background(), requestBody, nil)


```