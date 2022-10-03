---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCase()
displayName := "My Case 1 - Renamed"
requestBody.SetDisplayName(&displayName) 
description := "Updated description"
requestBody.SetDescription(&description) 
externalId := "Updated externalId"
requestBody.SetExternalId(&externalId) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").Patch(context.Background(), requestBody, nil)


```