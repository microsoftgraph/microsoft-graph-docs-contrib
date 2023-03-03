---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.SiteItemPageItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","title"},
	Expand: [] string {"webparts"},
}
configuration := &graphconfig.SiteItemPageItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").PagesById("sitePage-id").Get(context.Background(), configuration)


```