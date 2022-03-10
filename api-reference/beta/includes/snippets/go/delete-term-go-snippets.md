---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

setId := "set-id"
termId := "term-id"
result, err := graphClient.TermStore().SetsById(&setId).TermsById(&termId).Delete(nil)


```