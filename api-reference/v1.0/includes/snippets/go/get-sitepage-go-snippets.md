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


requestParameters := &graphsites.SiteItemPageItemGraph.sitePageRequestBuilderGetQueryParameters{
	Select: [] string {"id","name"},
}
configuration := &graphsites.SiteItemPageItemGraph.sitePageRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphSitePage, err := graphClient.Sites().BySiteId("site-id").Pages().ByBaseSitePageId("baseSitePage-id").GraphSitePage().Get(context.Background(), configuration)


```