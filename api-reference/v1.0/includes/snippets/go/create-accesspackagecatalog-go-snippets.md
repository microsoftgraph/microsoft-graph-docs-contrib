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

requestBody := graphmodels.NewAccessPackageCatalog()
displayName := "sales"
requestBody.SetDisplayName(&displayName) 
description := "for employees working with sales and outside sales partners"
requestBody.SetDescription(&description) 
state := graphmodels.PUBLISHED_ACCESSPACKAGECATALOGSTATE 
requestBody.SetState(&state) 
isExternallyVisible := true
requestBody.SetIsExternallyVisible(&isExternallyVisible) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
catalogs, err := graphClient.IdentityGovernance().EntitlementManagement().Catalogs().Post(context.Background(), requestBody, nil)


```