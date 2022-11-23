---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestIncludeHiddenFolders := true

requestParameters := &graphconfig.ChildFoldersRequestBuilderGetQueryParameters{
	IncludeHiddenFolders: &requestIncludeHiddenFolders,
}
configuration := &graphconfig.ChildFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFoldersById("mailFolder-id").ChildFolders().Get(context.Background(), configuration)


```