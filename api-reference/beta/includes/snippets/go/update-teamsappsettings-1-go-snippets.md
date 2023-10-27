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


requestBody := graphmodels.NewTeamsAppSettings()
isChatResourceSpecificConsentEnabled := true
requestBody.SetIsChatResourceSpecificConsentEnabled(&isChatResourceSpecificConsentEnabled) 

teamsAppSettings, err := graphClient.Teamwork().TeamsAppSettings().Patch(context.Background(), requestBody, nil)


```