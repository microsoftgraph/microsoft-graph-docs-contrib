---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsediscovery.NewCustodian()
email := "AdeleV@contoso.com"
requestBody.SetEmail(&email) 
applyHoldToSources := true
requestBody.SetApplyHoldToSources(&applyHoldToSources) 

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Custodians().Post(context.Background(), requestBody, nil)


```