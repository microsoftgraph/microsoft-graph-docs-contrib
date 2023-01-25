---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MeMailFolderItemMessagesRequestBuilderGetQueryParameters{
	Orderby: [] string {"from/emailAddress/name desc","subject"},
}
configuration := &graphconfig.MeMailFolderItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFoldersById("mailFolder-id").Messages().Get(context.Background(), configuration)


```