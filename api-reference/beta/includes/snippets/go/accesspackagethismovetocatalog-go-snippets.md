---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/IdentityGovernance/EntitlementManagement/AccessPackages/Item/MoveToCatalog"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMoveToCatalogPostRequestBody()
catalogId := "3301434b-99bd-46be-923b-d762c30c8e8b"
requestBody.SetCatalogId(&catalogId) 

graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").MoveToCatalog().Post(context.Background(), requestBody, nil)


```