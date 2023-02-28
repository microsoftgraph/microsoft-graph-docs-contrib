---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCopyNotebookPostRequestBody()
groupId := "groupId-value"
requestBody.SetGroupId(&groupId) 
renameAs := "renameAs-value"
requestBody.SetRenameAs(&renameAs) 

result, err := graphClient.Me().Onenote().NotebooksById("notebook-id").MicrosoftGraphCopyNotebook().Post(context.Background(), requestBody, nil)


```