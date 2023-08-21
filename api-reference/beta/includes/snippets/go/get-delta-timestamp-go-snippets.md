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



requestToken := "2021-09-29T20:00:00Z"

requestParameters := &graphdrives.DriveItemItemItemDelta()RequestBuilderGetQueryParameters{
	Token: &requestToken,
}
configuration := &graphdrives.DriveItemItemItemDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta(), err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Delta().Get(context.Background(), configuration)


```