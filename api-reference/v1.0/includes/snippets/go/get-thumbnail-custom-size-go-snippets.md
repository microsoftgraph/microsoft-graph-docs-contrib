---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphdrives.DriveItemItemItemThumbnailsRequestBuilderGetQueryParameters{
	Select: [] string {"c300x400_crop"},
}
configuration := &graphdrives.DriveItemItemItemThumbnailsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

thumbnails, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Thumbnails().Get(context.Background(), configuration)


```