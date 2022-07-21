---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCustodian()
email := "AdeleV@contoso.com"
requestBody.SetEmail(&email) 
applyHoldToSources := "true"
requestBody.SetApplyHoldToSources(&applyHoldToSources) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").Custodians().Post(requestBody)


```