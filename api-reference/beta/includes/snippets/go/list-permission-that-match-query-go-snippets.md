---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestSearch := "{query}"

requestParameters := &graphconfig.SitesRequestBuilderGetQueryParameters{
	Search: &requestSearch,
}
configuration := &graphconfig.SitesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Sites().Get(context.Background(), configuration)


```