---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestToken := "latest"

requestParameters := &graphsites.SiteItemListItemItemsDelta()RequestBuilderGetQueryParameters{
	Token: &requestToken,
}
configuration := &graphsites.SiteItemListItemItemsDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta(), err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().Delta().Get(context.Background(), configuration)


```