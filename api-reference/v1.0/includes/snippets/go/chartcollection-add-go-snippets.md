---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/Worksheets/Item/Charts/Add"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddPostRequestBody()
type := "ColumnStacked"
requestBody.SetType(&type) 
sourceData := "A1:B1"
requestBody.SetSourceData(&sourceData) 
seriesBy := "Auto"
requestBody.SetSeriesBy(&seriesBy) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Worksheets().ByWorksheetId("workbookWorksheet-id").Charts().Add().Post(context.Background(), requestBody, nil)


```