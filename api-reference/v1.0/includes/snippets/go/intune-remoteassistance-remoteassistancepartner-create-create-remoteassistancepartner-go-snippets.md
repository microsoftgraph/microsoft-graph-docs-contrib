---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewRemoteAssistancePartner()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
onboardingUrl := "https://example.com/onboardingUrl/"
requestBody.SetOnboardingUrl(&onboardingUrl) 
onboardingStatus := graphmodels.ONBOARDING_REMOTEASSISTANCEONBOARDINGSTATUS 
requestBody.SetOnboardingStatus(&onboardingStatus) 
lastConnectionDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:36.6670033-08:00")
requestBody.SetLastConnectionDateTime(&lastConnectionDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
remoteAssistancePartners, err := graphClient.DeviceManagement().RemoteAssistancePartners().Post(context.Background(), requestBody, nil)


```