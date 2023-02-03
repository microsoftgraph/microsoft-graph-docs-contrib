---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoveryHoldPolicy()
description := "updated description"
requestBody.SetDescription(&description) 

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").LegalHoldsById("ediscoveryHoldPolicy-id").Patch(context.Background(), requestBody, nil)


```