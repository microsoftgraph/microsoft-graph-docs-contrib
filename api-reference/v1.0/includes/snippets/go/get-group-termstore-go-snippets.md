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


requestParameters := &graphconfig.SiteItemTermStoreGroupItemRequestBuilderGetQueryParameters{
	Select: [] string {"*","parentSiteId"},
}
configuration := &graphconfig.SiteItemTermStoreGroupItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").TermStore().GroupsById("group-id").Get(context.Background(), configuration)


```