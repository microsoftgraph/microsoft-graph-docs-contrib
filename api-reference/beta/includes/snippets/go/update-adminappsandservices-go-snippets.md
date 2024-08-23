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

requestBody := graphmodels.NewAdminAppsAndServices()
settings := graphmodels.NewAppsAndServicesSettings()
isOfficeStoreEnabled := false
settings.SetIsOfficeStoreEnabled(&isOfficeStoreEnabled) 
isAppAndServicesTrialEnabled := false
settings.SetIsAppAndServicesTrialEnabled(&isAppAndServicesTrialEnabled) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appsAndServices, err := graphClient.Admin().AppsAndServices().Patch(context.Background(), requestBody, nil)


```