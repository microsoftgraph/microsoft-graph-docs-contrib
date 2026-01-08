---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  //other-imports
)

requestParameters := &graphdrives.ItemItemsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"extensions($filter=id eq 'myCustomExtension')"},
}
configuration := &graphdrives.ItemItemsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
items, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Get(context.Background(), configuration)


```