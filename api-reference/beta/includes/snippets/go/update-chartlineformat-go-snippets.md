---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWorkbookChartLineFormat()
color := "color-value"
requestBody.SetColor(&color) 

result, err := graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Workbook().WorksheetsById("workbookWorksheet-id").ChartsById("workbookChart-id").Axes().SeriesAxis().Format().Line().Patch(context.Background(), requestBody, nil)


```