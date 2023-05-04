---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.SiteItemListItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","name","lastModifiedDateTime"},
	Expand: [] string {"columns(select=name,description)","items",")"},
}
configuration := &graphconfig.SiteItemListItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Get(context.Background(), configuration)


```