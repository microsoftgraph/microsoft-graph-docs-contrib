---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphshares "github.com/microsoftgraph/msgraph-sdk-go/shares"
	  //other-imports
)

requestParameters := &graphshares.ItemDriveItemRequestBuilderGetQueryParameters{
	Expand: [] string {"children"},
}
configuration := &graphshares.ItemDriveItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
driveItem, err := graphClient.Shares().BySharedDriveItemId("sharedDriveItem-id").DriveItem().Get(context.Background(), configuration)


```