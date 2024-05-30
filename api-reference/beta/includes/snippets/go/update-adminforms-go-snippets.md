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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
forms, err := graphClient.Admin().Forms().Patch(context.Background(), requestBody, nil)


```