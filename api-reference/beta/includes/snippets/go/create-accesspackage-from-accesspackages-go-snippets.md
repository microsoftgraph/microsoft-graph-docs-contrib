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
catalogId := "aa2f6514-3232-46e7-a08a-2411ad8d7128"
requestBody.SetCatalogId(&catalogId) 
displayName := "sales reps"
requestBody.SetDisplayName(&displayName) 
description := "outside sales representatives"
requestBody.SetDescription(&description) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().Post(context.Background(), requestBody, nil)


```