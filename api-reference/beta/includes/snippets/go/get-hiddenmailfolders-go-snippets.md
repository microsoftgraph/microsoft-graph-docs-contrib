---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MailFoldersRequestBuilderGetQueryParameters{
	IncludeHiddenFolders: true,
}
configuration := &graphconfig.MailFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFolders().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```