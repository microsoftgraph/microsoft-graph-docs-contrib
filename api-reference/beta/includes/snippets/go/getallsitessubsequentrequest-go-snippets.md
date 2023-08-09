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



requestSkiptoken := "U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ"

requestParameters := &graphsites.SitesGetAllSites()RequestBuilderGetQueryParameters{
	Skiptoken: &requestSkiptoken,
}
configuration := &graphsites.SitesGetAllSites()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

getAllSites(), err := graphClient.Sites().GetAllSites().Get(context.Background(), configuration)


```