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


requestParameters := &graphdrives.DriveItemItemItemRequestBuilderGetQueryParameters{
	Expand: [] string {"children"},
}
configuration := &graphdrives.DriveItemItemItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

items, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Get(context.Background(), configuration)


```