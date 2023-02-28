---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestCount := true

requestParameters := &graphconfig.DirectoryDeletedItemsMicrosoft.graph.groupRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Orderby: [] string {"deletedDateTime asc"},
	Select: [] string {"id","DisplayName","deletedDateTime"},
}
configuration := &graphconfig.DirectoryDeletedItemsMicrosoft.graph.groupRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().DeletedItems().MicrosoftGraphGroup().Get(context.Background(), configuration)


```