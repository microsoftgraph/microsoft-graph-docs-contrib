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

requestParameters := &graphsites.ItemPagesItemGraph.sitePageRequestBuilderGetQueryParameters{
	Select: [] string {"id","name"},
}
configuration := &graphsites.ItemPagesItemGraph.sitePageRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphSitePage, err := graphClient.Sites().BySiteId("site-id").Pages().ByBaseSitePageId("baseSitePage-id").GraphSitePage().Get(context.Background(), configuration)


```