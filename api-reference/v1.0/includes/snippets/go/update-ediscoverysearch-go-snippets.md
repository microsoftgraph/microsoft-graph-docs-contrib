---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoverySearch()
displayName := "Teams search"
requestBody.SetDisplayName(&displayName) 

graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").SearchesById("ediscoverySearch-id").Patch(requestBody)


```