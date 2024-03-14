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


requestBody := graphmodels.NewM365AppsInstallationOptions()
updateChannel := graphmodels.CURRENT_APPSUPDATECHANNELTYPE 
requestBody.SetUpdateChannel(&updateChannel) 

installationOptions, err := graphClient.Admin().Microsoft365Apps().InstallationOptions().Patch(context.Background(), requestBody, nil)


```