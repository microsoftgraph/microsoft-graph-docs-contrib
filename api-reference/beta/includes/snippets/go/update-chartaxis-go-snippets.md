---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewWorkbookChartAxis()
majorUnit := graph.NewUntypedNode()
requestBody.SetMajorUnit(majorUnit)
maximum := graph.NewUntypedNode()
requestBody.SetMaximum(maximum)
minimum := graph.NewUntypedNode()
requestBody.SetMinimum(minimum)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
valueAxis, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Worksheets().ByWorkbookWorksheetId("workbookWorksheet-id").Charts().ByWorkbookChartId("workbookChart-id").Axes().ValueAxis().Patch(context.Background(), requestBody, nil)


```