---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetTagsToAdd( []Tag {
	msgraphsdk.NewTag(),
	SetAdditionalData(map[string]interface{}{
		"id": "b4798d14-748d-468e-a1ec-96a2b1d49677",
	}
}
options := &msgraphsdk.ApplyTagsRequestBuilderPostOptions{
	Body: requestBody,
}
caseId := "case-id"
reviewSetId := "reviewSet-id"
reviewSetQueryId := "reviewSetQuery-id"
graphClient.Compliance().Ediscovery().CasesById(&caseId).ReviewSetsById(&reviewSetId).QueriesById(&reviewSetQueryId).ApplyTags().Post(options);


```