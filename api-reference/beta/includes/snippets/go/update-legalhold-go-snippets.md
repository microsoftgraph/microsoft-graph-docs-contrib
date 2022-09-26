---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewLegalHold()
description := "This is a description for a legalHold"
requestBody.SetDescription(&description) 

graphClient.Compliance().Ediscovery().CasesById("case-id").LegalHoldsById("legalHold-id").Patch(context.Background(), requestBody, nil)


```