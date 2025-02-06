---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)


requestFilter := "bundle/album ne null"

requestParameters := &graphdrives.ItemBundlesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdrives.ItemBundlesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
bundles, err := graphClient.Drives().ByDriveId("drive-id").Bundles().Get(context.Background(), configuration)


```