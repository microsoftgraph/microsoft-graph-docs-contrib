---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ChildFoldersRequestBuilderGetQueryParameters{
	IncludeHiddenFolders: true,
}
configuration := &graphconfig.ChildFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFoldersById("mailFolder-id").ChildFolders().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```