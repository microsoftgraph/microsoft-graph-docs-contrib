---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEdiscoveryCase()
displayName := "My Case 1 - Renamed"
requestBody.SetDisplayName(&displayName)
description := "Updated description"
requestBody.SetDescription(&description)
ediscoveryCaseId := "ediscoveryCase-id"
graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).Patch(requestBody)


```