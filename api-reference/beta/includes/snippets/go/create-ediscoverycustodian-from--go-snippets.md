---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoveryCustodian()
email := "AdeleV@contoso.com"
requestBody.SetEmail(&email) 

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").Custodians().Post(context.Background(), requestBody, nil)


```