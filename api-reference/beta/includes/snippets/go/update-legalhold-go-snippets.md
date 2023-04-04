---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewLegalHold()
description := "This is a description for a legalHold"
requestBody.SetDescription(&description) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").LegalHoldsById("legalHold-id").Patch(context.Background(), requestBody, nil)


```