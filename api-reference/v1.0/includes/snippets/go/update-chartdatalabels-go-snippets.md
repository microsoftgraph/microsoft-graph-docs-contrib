---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWorkbookChartDataLabels()
position := "position-value"
requestBody.SetPosition(&position) 
showValue := true
requestBody.SetShowValue(&showValue) 
showSeriesName := true
requestBody.SetShowSeriesName(&showSeriesName) 
showCategoryName := true
requestBody.SetShowCategoryName(&showCategoryName) 
showLegendKey := true
requestBody.SetShowLegendKey(&showLegendKey) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Worksheets().ByWorksheetId("workbookWorksheet-id").Charts().ByChartId("workbookChart-id").DataLabels().Patch(context.Background(), requestBody, nil)


```