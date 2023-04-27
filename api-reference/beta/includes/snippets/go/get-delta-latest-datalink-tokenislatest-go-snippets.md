---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestToken := "latest"

requestParameters := &graphconfig.SiteItemListItemItemsDelta()RequestBuilderGetQueryParameters{
	Token: &requestToken,
}
configuration := &graphconfig.SiteItemListItemItemsDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().Delta().Get(context.Background(), configuration)


```