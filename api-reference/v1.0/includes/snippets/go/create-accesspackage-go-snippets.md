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

requestBody := graphmodels.NewAccessPackage()
displayName := "sales reps"
requestBody.SetDisplayName(&displayName) 
description := "outside sales representatives"
requestBody.SetDescription(&description) 
isHidden := false
requestBody.SetIsHidden(&isHidden) 
catalog := graphmodels.NewAccessPackageCatalog()
id := "66584aae-98bb-48cc-9458-7bee5d2a6577"
catalog.SetId(&id) 
requestBody.SetCatalog(catalog)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackages, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().Post(context.Background(), requestBody, nil)


```