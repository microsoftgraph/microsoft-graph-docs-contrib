---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "siteCollection/root ne null"

requestParameters := &graphconfig.SitesRequestBuilderGetQueryParameters{
	Select: [] string {"siteCollection","webUrl"},
	Filter: &requestFilter,
}
configuration := &graphconfig.SitesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Sites().Get(context.Background(), configuration)


```