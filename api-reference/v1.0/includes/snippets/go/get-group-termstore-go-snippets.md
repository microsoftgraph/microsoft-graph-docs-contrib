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

requestParameters := &graphsites.ItemTermStoreGroupsItemRequestBuilderGetQueryParameters{
	Select: [] string {"*","parentSiteId"},
}
configuration := &graphsites.ItemTermStoreGroupsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groups, err := graphClient.Sites().BySiteId("site-id").TermStore().Groups().ByGroupId("group-id").Get(context.Background(), configuration)


```