---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/Tables/Item/Columns/Item/Filter/Apply"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewApplyPostRequestBody()
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

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Tables().ByTableId("workbookTable-id").Columns().ByColumnId("workbookTableColumn-id").Filter().Apply().Post(context.Background(), requestBody, nil)


```