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


requestBody := graphmodels.NewWorkbookChartTitle()
overlay := true
requestBody.SetOverlay(&overlay) 
text := "text-value"
requestBody.SetText(&text) 
visible := true
requestBody.SetVisible(&visible) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Worksheets().ByWorksheetId("workbookWorksheet-id").Charts().ByChartId("workbookChart-id").Title().Patch(context.Background(), requestBody, nil)


```