---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/Worksheets/Item/Charts/Item/Series/Item/Points/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPoint()
additionalData := map[string]interface{}{
	"index" : int32(8) , 
}
requestBody.SetAdditionalData(additionalData)

graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Workbook().WorksheetsById("workbookWorksheet-id").ChartsById("workbookChart-id").SeriesById("workbookChartSeries-id").PointsById("workbookChartPoint-id").Post(context.Background(), requestBody, nil)


```