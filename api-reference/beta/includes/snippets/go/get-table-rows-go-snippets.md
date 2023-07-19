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

requestParameters := &graphdrives.DriveItemItemItemWorkbookTableItemRowsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphdrives.DriveItemItemItemWorkbookTableItemRowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Tables().ByTableId("workbookTable-id").Rows().Get(context.Background(), configuration)


```