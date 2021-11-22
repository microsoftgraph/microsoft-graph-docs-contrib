---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
groupId := "groupId-value"
requestBody.SetGroupId(&groupId)
renameAs := "renameAs-value"
requestBody.SetRenameAs(&renameAs)
options := &msgraphsdk.CopyNotebookRequestBuilderPostOptions{
	Body: requestBody,
}
notebookId := "notebook-id"
result, err := graphClient.Me().Onenote().NotebooksById(&notebookId).CopyNotebook().Post(options)


```