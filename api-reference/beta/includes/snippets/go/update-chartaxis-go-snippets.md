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


requestBody := graphmodels.NewWorkbookChartAxis()
majorUnit := graphmodels.NewJson()
requestBody.SetMajorUnit(majorUnit)
maximum := graphmodels.NewJson()
requestBody.SetMaximum(maximum)
minimum := graphmodels.NewJson()
requestBody.SetMinimum(minimum)

result, err := graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Workbook().WorksheetsById("workbookWorksheet-id").ChartsById("workbookChart-id").Axes().ValueAxis().Patch(context.Background(), requestBody, nil)


```