---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/Workbook/Worksheets/Item/Charts/Item/Series/Item/Points/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPoint()
additionalData := map[string]interface{}{
index := graphmodels.New()
	requestBody.SetIndex(index)
}
requestBody.SetAdditionalData(additionalData)

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Worksheets().ByWorksheetId("workbookWorksheet-id").Charts().ByChartId("workbookChart-id").Series().BySerieId("workbookChartSeries-id").Points().ByPointId("workbookChartPoint-id").Post(context.Background(), requestBody, nil)


```