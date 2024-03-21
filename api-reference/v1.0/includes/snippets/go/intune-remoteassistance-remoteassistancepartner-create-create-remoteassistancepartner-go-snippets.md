---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRemoteAssistancePartner()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
onboardingUrl := "https://example.com/onboardingUrl/"
requestBody.SetOnboardingUrl(&onboardingUrl) 
onboardingStatus := graphmodels.ONBOARDING_REMOTEASSISTANCEONBOARDINGSTATUS 
requestBody.SetOnboardingStatus(&onboardingStatus) 
lastConnectionDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:36.6670033-08:00")
requestBody.SetLastConnectionDateTime(&lastConnectionDateTime) 

remoteAssistancePartners, err := graphClient.DeviceManagement().RemoteAssistancePartners().Post(context.Background(), requestBody, nil)


```