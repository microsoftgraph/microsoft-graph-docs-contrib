---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageCatalog()
displayName := "sales"
requestBody.SetDisplayName(&displayName) 
description := "for employees working with sales and outside sales partners"
requestBody.SetDescription(&description) 
state := graphmodels.PUBLISHED_ACCESSPACKAGECATALOGSTATE 
requestBody.SetState(&state) 
isExternallyVisible := true
requestBody.SetIsExternallyVisible(&isExternallyVisible) 

catalogs, err := graphClient.IdentityGovernance().EntitlementManagement().Catalogs().Post(context.Background(), requestBody, nil)


```