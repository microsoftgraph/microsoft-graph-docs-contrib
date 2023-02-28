---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")

configuration := &graphconfig.MeContactFoldersMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.Me().ContactFolders().MicrosoftGraphDelta().Get(context.Background(), configuration)


```