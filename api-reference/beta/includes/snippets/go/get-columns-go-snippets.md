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



requestTop := int32(5)
requestSkip := int32(5)

requestParameters := &graphdrives.DriveItemItemItemWorkbookTableItemColumnsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphdrives.DriveItemItemItemWorkbookTableItemColumnsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

columns, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Tables().ByWorkbookTableId("workbookTable-id").Columns().Get(context.Background(), configuration)


```