---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAdminDynamics()
customerVoice := graphmodels.NewCustomerVoiceSettings()
isRestrictedSurveyAccessEnabled := false
customerVoice.SetIsRestrictedSurveyAccessEnabled(&isRestrictedSurveyAccessEnabled) 
isRecordIdentityByDefaultEnabled := false
customerVoice.SetIsRecordIdentityByDefaultEnabled(&isRecordIdentityByDefaultEnabled) 
isInOrgFormsPhishingScanEnabled := false
customerVoice.SetIsInOrgFormsPhishingScanEnabled(&isInOrgFormsPhishingScanEnabled) 
requestBody.SetCustomerVoice(customerVoice)

result, err := graphClient.Admin().Dynamics().Patch(context.Background(), requestBody, nil)


```