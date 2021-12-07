---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.TagRequestBuilderDeleteQueryParameters{
	Forcedelete: true,
}
options := &msgraphsdk.TagRequestBuilderDeleteOptions{
	Q: requestParameters,
}
caseId := "case-id"
tagId := "tag-id"
graphClient.Compliance().Ediscovery().CasesById(&caseId).TagsById(&tagId).Delete(options)


```