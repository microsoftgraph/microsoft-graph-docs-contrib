---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWorkbookTableColumn()
name := "name-value"
requestBody.SetName(&name) 
index := int32(99)
requestBody.SetIndex(&index) 
values := "values-value"
requestBody.SetValues(&values) 

columns, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Tables().ByWorkbookTableId("workbookTable-id").Columns().ByWorkbookTableColumnId("workbookTableColumn-id").Patch(context.Background(), requestBody, nil)


```