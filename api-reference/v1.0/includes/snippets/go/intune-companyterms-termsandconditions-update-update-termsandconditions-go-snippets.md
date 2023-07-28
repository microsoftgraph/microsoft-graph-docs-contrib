---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.DeviceManagement().TermsAndConditions().ByTermsAndConditionId("termsAndConditions-id").Patch(context.Background(), requestBody, nil)


```