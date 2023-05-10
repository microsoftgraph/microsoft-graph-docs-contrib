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


requestParameters := &graphconfig.DriveItemItemItemChildrenRequestBuilderGetQueryParameters{
	Expand: [] string {"thumbnails"},
}
configuration := &graphconfig.DriveItemItemItemChildrenRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Children().Get(context.Background(), configuration)


```