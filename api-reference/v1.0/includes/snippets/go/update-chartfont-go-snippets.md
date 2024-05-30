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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
font, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Worksheets().ByWorkbookWorksheetId("workbookWorksheet-id").Charts().ByWorkbookChartId("workbookChart-id").Axes().ValueAxis().Format().Font().Patch(context.Background(), requestBody, nil)


```