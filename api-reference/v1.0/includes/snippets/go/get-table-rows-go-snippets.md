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



requestTop := int32(5)
requestSkip := int32(5)

requestParameters := &graphdrives.DriveItemItemItemWorkbookTableItemRowsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphdrives.DriveItemItemItemWorkbookTableItemRowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

rows, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Tables().ByWorkbookTableId("workbookTable-id").Rows().Get(context.Background(), configuration)


```