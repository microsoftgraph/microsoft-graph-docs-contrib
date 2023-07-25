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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTermsAndConditionsAcceptanceStatus()
userDisplayName := "User Display Name value"
requestBody.SetUserDisplayName(&userDisplayName) 
acceptedVersion := int32(15)
requestBody.SetAcceptedVersion(&acceptedVersion) 
acceptedDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:43.6165506-08:00")
requestBody.SetAcceptedDateTime(&acceptedDateTime) 
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 

result, err := graphClient.DeviceManagement().TermsAndConditions().ByTermsAndConditionId("termsAndConditions-id").AcceptanceStatuses().Post(context.Background(), requestBody, nil)


```