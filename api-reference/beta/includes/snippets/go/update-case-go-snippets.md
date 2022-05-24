---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCase()
displayName := "My Case 1 - Renamed"
requestBody.SetDisplayName(&displayName)
description := "Updated description"
requestBody.SetDescription(&description)
externalId := "Updated externalId"
requestBody.SetExternalId(&externalId)
caseId := "case-id"
graphClient.Compliance().Ediscovery().CasesById(&caseId).Patch(requestBody)


```