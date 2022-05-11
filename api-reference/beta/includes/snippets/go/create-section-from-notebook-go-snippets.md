---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewOnenoteSection()
displayName := "Section name"
requestBody.SetDisplayName(&displayName)
notebookId := "notebook-id"
result, err := graphClient.Me().Onenote().NotebooksById(&notebookId).Sections().Post(requestBody)


```