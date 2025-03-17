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

requestParameters := &graphdrives.ItemItemsItemChildrenRequestBuilderGetQueryParameters{
	Expand: [] string {"thumbnails"},
}
configuration := &graphdrives.ItemItemsItemChildrenRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
children, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Children().Get(context.Background(), configuration)


```