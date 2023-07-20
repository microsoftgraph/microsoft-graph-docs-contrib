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


requestBody := graphmodelsediscovery.NewUserSource()
email := "adelev@contoso.com"
requestBody.SetEmail(&email) 
includedSources := graphmodels.MAILBOX_SOURCETYPE 
requestBody.SetIncludedSources(&includedSources) 

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").LegalHolds().ByLegalHoldId("legalHold-id").UserSources().Post(context.Background(), requestBody, nil)


```