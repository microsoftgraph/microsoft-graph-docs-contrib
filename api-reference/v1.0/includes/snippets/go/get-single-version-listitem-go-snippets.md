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


requestParameters := &graphsites.SiteItemListItemItemItemVersionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"fields"},
}
configuration := &graphsites.SiteItemListItemItemItemVersionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByItemId("listItem-id").Versions().ByVersionId("listItemVersion-id").Get(context.Background(), configuration)


```