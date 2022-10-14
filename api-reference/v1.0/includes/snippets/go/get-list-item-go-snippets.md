---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ListItemRequestBuilderGetQueryParameters{
	Expand: [] string {"fields"},
}
configuration := &graphconfig.ListItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").ListsById("list-id").ItemsById("listItem-id").Get(context.Background(), configuration)


```