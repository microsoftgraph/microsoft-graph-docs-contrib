---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "odata.maxpagesize=2",
}
requestParameters := &graphconfig.DeltaRequestBuilderGetQueryParameters{
	Select: [] string {"displayName"},
}
configuration := &graphconfig.DeltaRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().ContactFoldersById("contactFolder-id").Contacts().Delta().Get(context.Background(), configuration)


```