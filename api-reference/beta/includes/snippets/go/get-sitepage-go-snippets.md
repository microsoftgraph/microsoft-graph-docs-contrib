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


requestParameters := &graphsites.SiteItemPageItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","title"},
	Expand: [] string {"webparts"},
}
configuration := &graphsites.SiteItemPageItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Sites().BySiteId("site-id").Pages().ByPageId("sitePage-id").Get(context.Background(), configuration)


```