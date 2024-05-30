---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphdrives.NewProtectPostRequestBody()
options := graphmodels.NewWorkbookWorksheetProtectionOptions()
allowFormatCells := true
options.SetAllowFormatCells(&allowFormatCells) 
allowFormatColumns := true
options.SetAllowFormatColumns(&allowFormatColumns) 
allowFormatRows := true
options.SetAllowFormatRows(&allowFormatRows) 
allowInsertColumns := true
options.SetAllowInsertColumns(&allowInsertColumns) 
allowInsertRows := true
options.SetAllowInsertRows(&allowInsertRows) 
allowInsertHyperlinks := true
options.SetAllowInsertHyperlinks(&allowInsertHyperlinks) 
allowDeleteColumns := true
options.SetAllowDeleteColumns(&allowDeleteColumns) 
allowDeleteRows := true
options.SetAllowDeleteRows(&allowDeleteRows) 
allowSort := true
options.SetAllowSort(&allowSort) 
allowAutoFilter := true
options.SetAllowAutoFilter(&allowAutoFilter) 
allowPivotTables := true
options.SetAllowPivotTables(&allowPivotTables) 
requestBody.SetOptions(options)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Worksheets().ByWorkbookWorksheetId("workbookWorksheet-id").Protection().Protect().Post(context.Background(), requestBody, nil)


```