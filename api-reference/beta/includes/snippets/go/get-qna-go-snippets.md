---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

qnaId := "qna-id"
result, err := graphClient.Search().QnasById(&qnaId).Get(nil)


```