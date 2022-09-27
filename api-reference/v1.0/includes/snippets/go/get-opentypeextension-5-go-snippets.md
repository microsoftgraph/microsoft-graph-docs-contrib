---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "Extensions/any"

requestParameters := &graphconfig.MessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"Extensions($filter=id%20eq%20'Com.Contoso.Referral')"},
}
configuration := &graphconfig.MessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```