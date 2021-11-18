---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.ChildFoldersRequestBuilderGetQueryParameters{
	IncludeHiddenFolders: true,
}
options := &msgraphsdk.ChildFoldersRequestBuilderGetOptions{
	Q: requestParameters,
}
mailFolderId := "mailFolder-id"
result, err := graphClient.Me().MailFoldersById(&mailFolderId).ChildFolders().Get(options)


```