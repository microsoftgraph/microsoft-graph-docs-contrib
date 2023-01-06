---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestSearch := "\"Irene McGowen\""

requestParameters := &graphconfig.PeopleRequestBuilderGetQueryParameters{
	Search: &requestSearch,
}
configuration := &graphconfig.PeopleRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().People().Get(context.Background(), configuration)


```