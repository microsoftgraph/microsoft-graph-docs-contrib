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


requestFilter := "siteCollection/root ne null"

requestParameters := &graphsites.SitesRequestBuilderGetQueryParameters{
	Select: [] string {"siteCollection","webUrl"},
	Filter: &requestFilter,
}
configuration := &graphsites.SitesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sites, err := graphClient.Sites().Get(context.Background(), configuration)


```