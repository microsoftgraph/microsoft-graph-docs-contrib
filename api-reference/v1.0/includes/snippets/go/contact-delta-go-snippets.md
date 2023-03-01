---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")

requestParameters := &graphconfig.MeContactFolderItemContactsDelta()RequestBuilderGetQueryParameters{
	Select: [] string {"displayName"},
}
configuration := &graphconfig.MeContactFolderItemContactsDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().ContactFoldersById("contactFolder-id").Contacts().Delta().Get(context.Background(), configuration)


```