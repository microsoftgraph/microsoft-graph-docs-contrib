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

requestBody := graphmodels.NewDeviceEnrollmentConfiguration()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
priority := int32(8)
requestBody.SetPriority(&priority) 
version := int32(7)
requestBody.SetVersion(&version) 
pinMinimumLength := int32(0)
requestBody.SetPinMinimumLength(&pinMinimumLength) 
pinMaximumLength := int32(0)
requestBody.SetPinMaximumLength(&pinMaximumLength) 
pinUppercaseCharactersUsage := graphmodels.REQUIRED_WINDOWSHELLOFORBUSINESSPINUSAGE 
requestBody.SetPinUppercaseCharactersUsage(&pinUppercaseCharactersUsage) 
pinLowercaseCharactersUsage := graphmodels.REQUIRED_WINDOWSHELLOFORBUSINESSPINUSAGE 
requestBody.SetPinLowercaseCharactersUsage(&pinLowercaseCharactersUsage) 
pinSpecialCharactersUsage := graphmodels.REQUIRED_WINDOWSHELLOFORBUSINESSPINUSAGE 
requestBody.SetPinSpecialCharactersUsage(&pinSpecialCharactersUsage) 
state := graphmodels.ENABLED_ENABLEMENT 
requestBody.SetState(&state) 
securityDeviceRequired := true
requestBody.SetSecurityDeviceRequired(&securityDeviceRequired) 
unlockWithBiometricsEnabled := true
requestBody.SetUnlockWithBiometricsEnabled(&unlockWithBiometricsEnabled) 
remotePassportEnabled := true
requestBody.SetRemotePassportEnabled(&remotePassportEnabled) 
pinPreviousBlockCount := int32(5)
requestBody.SetPinPreviousBlockCount(&pinPreviousBlockCount) 
pinExpirationInDays := int32(3)
requestBody.SetPinExpirationInDays(&pinExpirationInDays) 
enhancedBiometricsState := graphmodels.ENABLED_ENABLEMENT 
requestBody.SetEnhancedBiometricsState(&enhancedBiometricsState) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceEnrollmentConfigurations, err := graphClient.DeviceManagement().DeviceEnrollmentConfigurations().Post(context.Background(), requestBody, nil)


```