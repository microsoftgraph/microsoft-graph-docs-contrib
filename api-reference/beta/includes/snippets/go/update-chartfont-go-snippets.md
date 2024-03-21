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


requestBody := graphmodels.NewWorkbookChartFont()
bold := true
requestBody.SetBold(&bold) 
color := "color-value"
requestBody.SetColor(&color) 
italic := true
requestBody.SetItalic(&italic) 
name := "name-value"
requestBody.SetName(&name) 
size := float64(99)
requestBody.SetSize(&size) 
underline := "underline-value"
requestBody.SetUnderline(&underline) 

font, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Worksheets().ByWorkbookWorksheetId("workbookWorksheet-id").Charts().ByWorkbookChartId("workbookChart-id").Axes().ValueAxis().Format().Font().Patch(context.Background(), requestBody, nil)


```