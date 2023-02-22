---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestIncludehiddenfolders := true

requestParameters := &graphconfig.MeMailFoldersRequestBuilderGetQueryParameters{
	Includehiddenfolders: &requestIncludehiddenfolders,
}
configuration := &graphconfig.MeMailFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFolders().Get(context.Background(), configuration)


```