---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewApplyPostRequestBody()


workbookSortField := graphmodels.NewWorkbookSortField()
key := int32(99)
workbookSortField.SetKey(&key) 
sortOn := "sortOn-value"
workbookSortField.SetSortOn(&sortOn) 
ascending := true
workbookSortField.SetAscending(&ascending) 
color := "color-value"
workbookSortField.SetColor(&color) 
dataOption := "dataOption-value"
workbookSortField.SetDataOption(&dataOption) 
icon := graphmodels.NewWorkbookIcon()
set := "set-value"
icon.SetSet(&set) 
index := int32(99)
icon.SetIndex(&index) 
workbookSortField.SetIcon(icon)

fields := []graphmodels.WorkbookSortFieldable {
	workbookSortField,
}
requestBody.SetFields(fields)
matchCase := true
requestBody.SetMatchCase(&matchCase) 
method := "method-value"
requestBody.SetMethod(&method) 

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Tables().ByTableId("workbookTable-id").Sort().Apply().Post(context.Background(), requestBody, nil)


```