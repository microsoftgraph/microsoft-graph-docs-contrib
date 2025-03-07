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

requestBody := graphmodels.NewAdminDynamics()
customerVoice := graphmodels.NewCustomerVoiceSettings()
isRestrictedSurveyAccessEnabled := false
customerVoice.SetIsRestrictedSurveyAccessEnabled(&isRestrictedSurveyAccessEnabled) 
isRecordIdentityByDefaultEnabled := false
customerVoice.SetIsRecordIdentityByDefaultEnabled(&isRecordIdentityByDefaultEnabled) 
isInOrgFormsPhishingScanEnabled := false
customerVoice.SetIsInOrgFormsPhishingScanEnabled(&isInOrgFormsPhishingScanEnabled) 
requestBody.SetCustomerVoice(customerVoice)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
dynamics, err := graphClient.Admin().Dynamics().Patch(context.Background(), requestBody, nil)


```