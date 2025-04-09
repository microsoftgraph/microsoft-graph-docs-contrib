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


requestToken := "latest"

requestParameters := &graphdrives.ItemItemsItemDeltaRequestBuilderGetQueryParameters{
	Token: &requestToken,
}
configuration := &graphdrives.ItemItemsItemDeltaRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
delta, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Delta().GetAsDeltaGetResponse(context.Background(), configuration)


```