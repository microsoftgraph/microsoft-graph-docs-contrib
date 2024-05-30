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

requestBody := graphmodels.NewTermsAndConditionsAcceptanceStatus()
userDisplayName := "User Display Name value"
requestBody.SetUserDisplayName(&userDisplayName) 
acceptedVersion := int32(15)
requestBody.SetAcceptedVersion(&acceptedVersion) 
acceptedDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:43.6165506-08:00")
requestBody.SetAcceptedDateTime(&acceptedDateTime) 
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
acceptanceStatuses, err := graphClient.DeviceManagement().TermsAndConditions().ByTermsAndConditionsId("termsAndConditions-id").AcceptanceStatuses().ByTermsAndConditionsAcceptanceStatusId("termsAndConditionsAcceptanceStatus-id").Patch(context.Background(), requestBody, nil)


```