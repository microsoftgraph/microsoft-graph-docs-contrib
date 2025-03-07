---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewM365AppsInstallationOptions()
updateChannel := graphmodels.CURRENT_APPSUPDATECHANNELTYPE 
requestBody.SetUpdateChannel(&updateChannel) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
installationOptions, err := graphClient.Admin().Microsoft365Apps().InstallationOptions().Patch(context.Background(), requestBody, nil)


```