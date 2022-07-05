---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEdiscoveryReviewTag()
displayName := "My tag API 2"
requestBody.SetDisplayName(&displayName)
description := "Use Graph API to create tags (updated)"
requestBody.SetDescription(&description)
ediscoveryCaseId := "ediscoveryCase-id"
ediscoveryReviewTagId := "ediscoveryReviewTag-id"
graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).TagsById(&ediscoveryReviewTagId).Patch(requestBody)


```