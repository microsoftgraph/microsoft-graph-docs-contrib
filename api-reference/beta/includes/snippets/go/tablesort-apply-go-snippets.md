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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Tables().ByWorkbookTableId("workbookTable-id").Sort().Apply().Post(context.Background(), requestBody, nil)


```