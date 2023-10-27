---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphsites.SiteItemListItemItemsRequestBuilderGetQueryParameters{
	Expand: [] string {"fields(select=Name,Color,Quantity)"},
}
configuration := &graphsites.SiteItemListItemItemsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

items, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().Get(context.Background(), configuration)


```