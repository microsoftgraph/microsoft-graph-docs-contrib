---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


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

valueAxis, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Worksheets().ByWorkbookWorksheetId("workbookWorksheet-id").Charts().ByWorkbookChartId("workbookChart-id").Axes().ValueAxis().Patch(context.Background(), requestBody, nil)


```