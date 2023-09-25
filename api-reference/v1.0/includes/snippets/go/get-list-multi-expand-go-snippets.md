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


requestParameters := &graphsites.SiteItemListItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","name","lastModifiedDateTime"},
	Expand: [] string {"columns(select=name,description)","items",")"},
}
configuration := &graphsites.SiteItemListItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

lists, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Get(context.Background(), configuration)


```