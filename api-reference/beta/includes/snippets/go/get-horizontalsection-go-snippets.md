---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.SiteItemPageItemCanvasLayoutHorizontalSectionItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","expand=columns"},
}
configuration := &graphconfig.SiteItemPageItemCanvasLayoutHorizontalSectionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").PagesById("sitePage-id").CanvasLayout().HorizontalSectionsById("horizontalSection-id").Get(context.Background(), configuration)


```