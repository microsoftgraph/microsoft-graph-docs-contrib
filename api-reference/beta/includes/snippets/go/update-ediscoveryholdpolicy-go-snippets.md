---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEdiscoveryHoldPolicy()
description := "updated description"
requestBody.SetDescription(&description) 

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").LegalHoldsById("ediscoveryHoldPolicy-id").Patch(context.Background(), requestBody, nil)


```