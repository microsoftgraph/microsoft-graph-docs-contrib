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

requestBody := graphmodels.NewTeamsAppSettings()
customAppSettings := graphmodels.NewCustomAppSettings()
developerToolsForShowingAppUsageMetrics := graphmodels.DEVELOPERPORTAL_APPDEVELOPMENTPLATFORMS 
customAppSettings.SetDeveloperToolsForShowingAppUsageMetrics(&developerToolsForShowingAppUsageMetrics) 
requestBody.SetCustomAppSettings(customAppSettings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
teamsAppSettings, err := graphClient.Teamwork().TeamsAppSettings().Patch(context.Background(), requestBody, nil)


```