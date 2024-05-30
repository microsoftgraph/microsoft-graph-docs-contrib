---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
dataLabels, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Worksheets().ByWorkbookWorksheetId("workbookWorksheet-id").Charts().ByWorkbookChartId("workbookChart-id").DataLabels().Patch(context.Background(), requestBody, nil)


```