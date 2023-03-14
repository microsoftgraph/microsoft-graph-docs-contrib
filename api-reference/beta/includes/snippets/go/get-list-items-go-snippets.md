---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.SiteItemListItemItemsRequestBuilderGetQueryParameters{
	Expand: [] string {"fields(select=Name,Color,Quantity)"},
}
configuration := &graphconfig.SiteItemListItemItemsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").ListsById("list-id").Items().Get(context.Background(), configuration)


```