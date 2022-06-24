---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTag()
description := "This is an updated description."
requestBody.SetDescription(&description)
caseId := "case-id"
tagId := "tag-id"
graphClient.Compliance().Ediscovery().CasesById(&caseId).TagsById(&tagId).Patch(requestBody)


```