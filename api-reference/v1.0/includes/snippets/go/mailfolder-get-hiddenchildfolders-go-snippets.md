---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestIncludeHiddenFolders := true

requestParameters := &graphconfig.MeMailFolderItemChildFoldersRequestBuilderGetQueryParameters{
	IncludeHiddenFolders: &requestIncludeHiddenFolders,
}
configuration := &graphconfig.MeMailFolderItemChildFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFoldersById("mailFolder-id").ChildFolders().Get(context.Background(), configuration)


```