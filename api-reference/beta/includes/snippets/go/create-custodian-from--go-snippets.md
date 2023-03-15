---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewCustodian()
email := "AdeleV@contoso.com"
requestBody.SetEmail(&email) 
applyHoldToSources := true
requestBody.SetApplyHoldToSources(&applyHoldToSources) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").Custodians().Post(context.Background(), requestBody, nil)


```