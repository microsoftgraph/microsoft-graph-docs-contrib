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


requestSkiptoken := "U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ"

requestParameters := &graphsites.SitesGetAllSitesRequestBuilderGetQueryParameters{
	Skiptoken: &requestSkiptoken,
}
configuration := &graphsites.SitesGetAllSitesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getAllSites, err := graphClient.Sites().GetAllSites().GetAsGetAllSitesGetResponse(context.Background(), configuration)


```