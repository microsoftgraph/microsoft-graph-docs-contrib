---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphdrives.DriveItemItemItemChildrenRequestBuilderGetQueryParameters{
	Expand: [] string {"thumbnails"},
}
configuration := &graphdrives.DriveItemItemItemChildrenRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

children, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Children().Get(context.Background(), configuration)


```