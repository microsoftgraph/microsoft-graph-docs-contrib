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


requestBody := graphmodels.NewCustodian()
email := "AdeleV@contoso.com"
requestBody.SetEmail(&email) 
applyHoldToSources := true
requestBody.SetApplyHoldToSources(&applyHoldToSources) 

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Custodians().Post(context.Background(), requestBody, nil)


```