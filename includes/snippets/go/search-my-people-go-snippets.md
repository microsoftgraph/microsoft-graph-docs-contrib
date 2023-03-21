---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestSearch := "\"Irene McGowen\""

requestParameters := &graphconfig.MePeopleRequestBuilderGetQueryParameters{
	Search: &requestSearch,
}
configuration := &graphconfig.MePeopleRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().People().Get(context.Background(), configuration)


```