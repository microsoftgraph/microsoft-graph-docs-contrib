---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")

configuration := &graphconfig.MeMailFolderItemMessagesMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.Me().MailFoldersById("mailFolder-id").Messages().MicrosoftGraphDelta().Get(context.Background(), configuration)


```