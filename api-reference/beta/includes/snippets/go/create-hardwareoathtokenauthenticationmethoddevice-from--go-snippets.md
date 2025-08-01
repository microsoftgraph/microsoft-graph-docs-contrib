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

requestBody := graphmodels.NewHardwareOathTokenAuthenticationMethodDevice()
displayName := "Token 1"
requestBody.SetDisplayName(&displayName) 
serialNumber := "TOTP123456"
requestBody.SetSerialNumber(&serialNumber) 
manufacturer := "Contoso"
requestBody.SetManufacturer(&manufacturer) 
model := "Hardware Token 1000"
requestBody.SetModel(&model) 
secretKey := "6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB"
requestBody.SetSecretKey(&secretKey) 
timeIntervalInSeconds := int32(30)
requestBody.SetTimeIntervalInSeconds(&timeIntervalInSeconds) 
hashFunction := graphmodels.HMACSHA1_HARDWAREOATHTOKENHASHFUNCTION 
requestBody.SetHashFunction(&hashFunction) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
hardwareOathDevices, err := graphClient.Directory().AuthenticationMethodDevices().HardwareOathDevices().Post(context.Background(), requestBody, nil)


```