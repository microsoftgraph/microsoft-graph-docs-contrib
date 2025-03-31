---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-sdk-go/sites"
	  //other-imports
)

requestParameters := &graphsites.ItemListsItemItemsItemVersionsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"fields"},
}
configuration := &graphsites.ItemListsItemItemsItemVersionsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
versions, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByListItemId("listItem-id").Versions().ByListItemVersionId("listItemVersion-id").Get(context.Background(), configuration)


```