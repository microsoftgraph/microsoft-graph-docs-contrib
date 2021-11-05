---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.MailFolderRequestBuilderGetQueryParameters{
	IncludeHiddenFolders: true,
}
options := &msgraphsdk.MailFolderRequestBuilderGetOptions{
	Q: requestParameters,
}
mailFolderId := "mailFolder-id"
result, err := graphClient.Me().MailFoldersById(&mailFolderId).Get(options);


```