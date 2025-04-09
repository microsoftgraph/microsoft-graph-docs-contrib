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
	  //other-imports
)

requestBody := graphusers.NewItemAssignAndActivateBySerialNumberPostRequestBody()
verificationCode := "588651"
requestBody.SetVerificationCode(&verificationCode) 
serialNumber := "TOTP123456"
requestBody.SetSerialNumber(&serialNumber) 
displayName := "Amy Masters Token"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().Authentication().HardwareOathMethods().AssignAndActivateBySerialNumber().Post(context.Background(), requestBody, nil)


```