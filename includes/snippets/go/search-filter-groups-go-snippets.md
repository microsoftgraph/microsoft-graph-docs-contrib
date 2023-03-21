---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "mailEnabled eq true"
requestSearch := "\"displayName:OneVideo\""

requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Search: &requestSearch,
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().Get(context.Background(), configuration)


```