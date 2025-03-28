---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemAssignAndActivatePostRequestBody()
device := graphmodels.NewHardwareOathTokenAuthenticationMethodDevice()
id := "aad49556-####-####-####-############"
device.SetId(&id) 
requestBody.SetDevice(device)
verificationCode := "588651"
requestBody.SetVerificationCode(&verificationCode) 
displayName := "Amy Masters Token"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().Authentication().HardwareOathMethods().AssignAndActivate().Post(context.Background(), requestBody, nil)


```