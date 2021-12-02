---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.SitesRequestBuilderGetQueryParameters{
	Select: "siteCollection,webUrl",
	Filter: "siteCollection/root%20ne%20null",
}
options := &msgraphsdk.SitesRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Sites().Get(options)


```