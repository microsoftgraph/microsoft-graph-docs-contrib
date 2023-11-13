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
displayName := "Catalog One"
requestBody.SetDisplayName(&displayName) 

catalogs, err := graphClient.IdentityGovernance().EntitlementManagement().Catalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").Patch(context.Background(), requestBody, nil)


```