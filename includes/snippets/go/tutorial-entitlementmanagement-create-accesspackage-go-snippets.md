---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackage()
catalogId := "cec5d6ab-c75d-47c0-9c1c-92e89f66e384"
requestBody.SetCatalogId(&catalogId) 
displayName := "Marketing Campaign"
requestBody.SetDisplayName(&displayName) 
description := "Access to resources for the campaign"
requestBody.SetDescription(&description) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().Post(context.Background(), requestBody, nil)


```