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


requestBody := graphmodels.NewAdminForms()
settings := graphmodels.NewFormsSettings()
isExternalSendFormEnabled := true
settings.SetIsExternalSendFormEnabled(&isExternalSendFormEnabled) 
isExternalShareCollaborationEnabled := false
settings.SetIsExternalShareCollaborationEnabled(&isExternalShareCollaborationEnabled) 
isExternalShareResultEnabled := false
settings.SetIsExternalShareResultEnabled(&isExternalShareResultEnabled) 
isExternalShareTemplateEnabled := false
settings.SetIsExternalShareTemplateEnabled(&isExternalShareTemplateEnabled) 
isRecordIdentityByDefaultEnabled := true
settings.SetIsRecordIdentityByDefaultEnabled(&isRecordIdentityByDefaultEnabled) 
isBingImageSearchEnabled := true
settings.SetIsBingImageSearchEnabled(&isBingImageSearchEnabled) 
isInOrgFormsPhishingScanEnabled := false
settings.SetIsInOrgFormsPhishingScanEnabled(&isInOrgFormsPhishingScanEnabled) 
requestBody.SetSettings(settings)

result, err := graphClient.Admin().Forms().Patch(context.Background(), requestBody, nil)


```