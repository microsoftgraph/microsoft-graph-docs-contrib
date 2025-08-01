---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  //other-imports
)

requestParameters := &graphsites.ItemListsItemItemsRequestBuilderGetQueryParameters{
	Expand: [] string {"fields(select=Name,Color,Quantity)"},
}
configuration := &graphsites.ItemListsItemItemsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
items, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().Get(context.Background(), configuration)


```