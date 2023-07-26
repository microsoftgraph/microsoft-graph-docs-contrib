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


requestParameters := &graphsites.SiteItemPageItemWebPartItemRequestBuilderGetQueryParameters{
	Select: [] string {"id"},
}
configuration := &graphsites.SiteItemPageItemWebPartItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Sites().BySiteId("site-id").Pages().ByPageId("sitePage-id").WebParts().ByWebPartId("webPart-id").Get(context.Background(), configuration)


```