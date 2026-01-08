---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/networkaccess"
	  //other-imports
)


request@url := "msn.com/en-us/sports"

requestParameters := &graphnetworkaccess.ConnectivitygetWebCategoryByUrlWithUrlRequestBuilderGetQueryParameters{
	@url: &request@url,
}
configuration := &graphnetworkaccess.ConnectivitygetWebCategoryByUrlWithUrlRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
url := "{url}"
microsoftGraphNetworkaccessGetWebCategoryByUrl, err := graphClient.NetworkAccess().Connectivity().MicrosoftGraphNetworkaccessGetWebCategoryByUrlWithUrl(&url).Get(context.Background(), configuration)


```