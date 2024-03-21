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
allowUserRequestsForAppAccess := true
requestBody.SetAllowUserRequestsForAppAccess(&allowUserRequestsForAppAccess) 

teamsAppSettings, err := graphClient.Teamwork().TeamsAppSettings().Patch(context.Background(), requestBody, nil)


```