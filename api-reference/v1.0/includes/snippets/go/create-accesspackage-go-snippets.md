---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().Post(context.Background(), requestBody, nil)


```