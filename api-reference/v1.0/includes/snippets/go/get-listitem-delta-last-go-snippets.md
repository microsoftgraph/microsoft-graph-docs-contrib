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



requestToken := "1230919asd190410jlka"

requestParameters := &graphsites.SiteItemListItemItemItemRequestBuilderGetQueryParameters{
	Token: &requestToken,
}
configuration := &graphsites.SiteItemListItemItemItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

items, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByListItemId("listItem-id").Get(context.Background(), configuration)


```