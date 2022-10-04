---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCustodian()
applyHoldToSources := false
requestBody.SetApplyHoldToSources(&applyHoldToSources) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").CustodiansById("custodian-id").Patch(context.Background(), requestBody, nil)


```