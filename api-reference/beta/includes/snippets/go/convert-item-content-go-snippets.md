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



requestFormat := "{format}"

requestParameters := &graphdrives.DriveItemItemItemContentRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphdrives.DriveItemItemItemContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Content().Get(context.Background(), configuration)


```