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


requestBody := graphdrives.NewAddPostRequestBody()
type := "ColumnStacked"
requestBody.SetType(&type) 
sourceData := "A1:B1"
requestBody.SetSourceData(&sourceData) 
seriesBy := "Auto"
requestBody.SetSeriesBy(&seriesBy) 

add, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Worksheets().ByWorkbookWorksheetId("workbookWorksheet-id").Charts().Add().Post(context.Background(), requestBody, nil)


```