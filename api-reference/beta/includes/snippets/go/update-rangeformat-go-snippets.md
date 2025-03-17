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

requestBody := graphmodels.NewWorkbookRangeFormat()
columnWidth := float64(135)
requestBody.SetColumnWidth(&columnWidth) 
verticalAlignment := "Top"
requestBody.SetVerticalAlignment(&verticalAlignment) 
rowHeight := float64(49)
requestBody.SetRowHeight(&rowHeight) 
wrapText := false
requestBody.SetWrapText(&wrapText) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
format, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Worksheets().ByWorkbookWorksheetId("workbookWorksheet-id").RangeWithAddress(&address).Format().Patch(context.Background(), requestBody, nil)


```