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

requestParameters := &graphdrives.ItemItemsItemThumbnailsRequestBuilderGetQueryParameters{
	Select: [] string {"c300x400_crop"},
}
configuration := &graphdrives.ItemItemsItemThumbnailsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
thumbnails, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Thumbnails().Get(context.Background(), configuration)


```