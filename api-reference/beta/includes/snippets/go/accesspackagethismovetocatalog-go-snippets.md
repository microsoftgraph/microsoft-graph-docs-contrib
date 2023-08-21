---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphidentitygovernance.NewMoveToCatalogPostRequestBody()
catalogId := "3301434b-99bd-46be-923b-d762c30c8e8b"
requestBody.SetCatalogId(&catalogId) 

graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").MoveToCatalog().Post(context.Background(), requestBody, nil)


```