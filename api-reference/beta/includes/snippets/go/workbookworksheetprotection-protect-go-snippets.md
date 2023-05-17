---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/Workbook/Worksheets/Item/Protection/Protect"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewProtectPostRequestBody()
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

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Worksheets().ByWorksheetId("workbookWorksheet-id").Protection().Protect().Post(context.Background(), requestBody, nil)


```