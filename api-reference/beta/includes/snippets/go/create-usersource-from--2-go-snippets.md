---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUserSource()
email := "adelev@contoso.com"
requestBody.SetEmail(&email) 
includedSources := graphmodels.MAILBOX_SOURCETYPE 
requestBody.SetIncludedSources(&includedSources) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").LegalHoldsById("legalHold-id").UserSources().Post(context.Background(), requestBody, nil)


```