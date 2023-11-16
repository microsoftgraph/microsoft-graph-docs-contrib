---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewApplyPostRequestBody()
criteria := graphmodels.NewWorkbookFilterCriteria()
criterion1 := "criterion1-value"
criteria.SetCriterion1(&criterion1) 
criterion2 := "criterion2-value"
criteria.SetCriterion2(&criterion2) 
color := "color-value"
criteria.SetColor(&color) 
operator := graphmodels.Newoperator()
criteria.SetOperator(operator)
icon := graphmodels.NewWorkbookIcon()
set := "set-value"
icon.SetSet(&set) 
index := int32(99)
icon.SetIndex(&index) 
criteria.SetIcon(icon)
dynamicCriteria := "dynamicCriteria-value"
criteria.SetDynamicCriteria(&dynamicCriteria) 
values := graphmodels.NewJson()
criteria.SetValues(values)
filterOn := "filterOn-value"
criteria.SetFilterOn(&filterOn) 
requestBody.SetCriteria(criteria)

graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Tables().ByWorkbookTableId("workbookTable-id").Columns().ByWorkbookTableColumnId("workbookTableColumn-id").Filter().Apply().Post(context.Background(), requestBody, nil)


```