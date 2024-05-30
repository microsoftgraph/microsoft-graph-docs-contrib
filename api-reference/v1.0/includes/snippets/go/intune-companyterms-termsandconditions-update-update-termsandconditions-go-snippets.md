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

requestBody := graphmodels.NewTermsAndConditions()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
title := "Title value"
requestBody.SetTitle(&title) 
bodyText := "Body Text value"
requestBody.SetBodyText(&bodyText) 
acceptanceStatement := "Acceptance Statement value"
requestBody.SetAcceptanceStatement(&acceptanceStatement) 
version := int32(7)
requestBody.SetVersion(&version) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
termsAndConditions, err := graphClient.DeviceManagement().TermsAndConditions().ByTermsAndConditionsId("termsAndConditions-id").Patch(context.Background(), requestBody, nil)


```