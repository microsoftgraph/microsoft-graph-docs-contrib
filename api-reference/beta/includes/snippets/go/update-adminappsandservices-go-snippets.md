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


requestBody := graphmodels.NewAdminAppsAndServices()
settings := graphmodels.NewAppsAndServicesSettings()
isOfficeStoreEnabled := false
settings.SetIsOfficeStoreEnabled(&isOfficeStoreEnabled) 
isAppAndServicesTrialEnabled := false
settings.SetIsAppAndServicesTrialEnabled(&isAppAndServicesTrialEnabled) 
requestBody.SetSettings(settings)

appsAndServices, err := graphClient.Admin().AppsAndServices().Patch(context.Background(), requestBody, nil)


```