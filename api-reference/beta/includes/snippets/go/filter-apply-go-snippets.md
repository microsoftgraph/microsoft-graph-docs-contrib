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
criteria := graphmodels.NewWorkbookFilterCriteria()
criterion1 := "criterion1-value"
criteria.SetCriterion1(&criterion1) 
criterion2 := "criterion2-value"
criteria.SetCriterion2(&criterion2) 
color := "color-value"
criteria.SetColor(&color) 
operator := graph.Newoperator()
criteria.SetOperator(operator)
icon := graphmodels.NewWorkbookIcon()
set := "set-value"
icon.SetSet(&set) 
index := int32(99)
icon.SetIndex(&index) 
criteria.SetIcon(icon)
dynamicCriteria := "dynamicCriteria-value"
criteria.SetDynamicCriteria(&dynamicCriteria) 
values := graph.Newvalues()
criteria.SetValues(values)
filterOn := "filterOn-value"
criteria.SetFilterOn(&filterOn) 
requestBody.SetCriteria(criteria)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Tables().ByWorkbookTableId("workbookTable-id").Columns().ByWorkbookTableColumnId("workbookTableColumn-id").Filter().Apply().Post(context.Background(), requestBody, nil)


```