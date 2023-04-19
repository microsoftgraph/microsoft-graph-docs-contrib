---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFormat := "{format}"

requestParameters := &graphconfig.DriveItemItemItemContentRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphconfig.DriveItemItemItemContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Content().Get(context.Background(), configuration)


```