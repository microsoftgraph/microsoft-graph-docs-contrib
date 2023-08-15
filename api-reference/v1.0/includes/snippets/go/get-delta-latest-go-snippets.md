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



requestToken := "latest"

requestParameters := &graphdrives.DriveItemItemItemDelta()RequestBuilderGetQueryParameters{
	Token: &requestToken,
}
configuration := &graphdrives.DriveItemItemItemDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta(), err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Delta().Get(context.Background(), configuration)


```