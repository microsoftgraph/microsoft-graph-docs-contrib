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

requestBody := graphmodels.NewCloudPcExternalPartner()
partnerId := "198d7140-80bb-4843-8cc4-811377a49a92"
requestBody.SetPartnerId(&partnerId) 
enableConnection := true
requestBody.SetEnableConnection(&enableConnection) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
externalPartners, err := graphClient.DeviceManagement().VirtualEndpoint().ExternalPartners().Post(context.Background(), requestBody, nil)


```