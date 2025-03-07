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

requestBody := graphmodels.NewSecurityAction()
name := "BlockIp"
requestBody.SetName(&name) 
actionReason := "Test"
requestBody.SetActionReason(&actionReason) 


keyValuePair := graphmodels.NewKeyValuePair()
name := "IP"
keyValuePair.SetName(&name) 
value := "1.2.3.4"
keyValuePair.SetValue(&value) 

parameters := []graphmodels.KeyValuePairable {
	keyValuePair,
}
requestBody.SetParameters(parameters)
vendorInformation := graphmodels.NewSecurityVendorInformation()
provider := "Windows Defender ATP"
vendorInformation.SetProvider(&provider) 
vendor := "Microsoft"
vendorInformation.SetVendor(&vendor) 
requestBody.SetVendorInformation(vendorInformation)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
securityActions, err := graphClient.Security().SecurityActions().Post(context.Background(), requestBody, nil)


```