---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestToken := "1230919asd190410jlka"

requestParameters := &graphconfig.SiteItemListItemItemsDelta()RequestBuilderGetQueryParameters{
	Token: &requestToken,
}
configuration := &graphconfig.SiteItemListItemItemsDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").ListsById("list-id").Items().Delta().Get(context.Background(), configuration)


```