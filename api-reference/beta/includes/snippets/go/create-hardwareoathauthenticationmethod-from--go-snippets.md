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

requestBody := graphmodels.NewHardwareOathAuthenticationMethod()
device := graphmodels.NewHardwareOathTokenAuthenticationMethodDevice()
id := "aad49556-####-####-####-############"
device.SetId(&id) 
requestBody.SetDevice(device)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
hardwareOathMethods, err := graphClient.Me().Authentication().HardwareOathMethods().Post(context.Background(), requestBody, nil)


```