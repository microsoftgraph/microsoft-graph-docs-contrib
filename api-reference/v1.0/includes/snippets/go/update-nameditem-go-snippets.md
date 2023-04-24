---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWorkbookNamedItem()
type := "type-value"
requestBody.SetType(&type) 
scope := "scope-value"
requestBody.SetScope(&scope) 
comment := "comment-value"
requestBody.SetComment(&comment) 
value := graphmodels.NewJson()
requestBody.SetValue(value)
visible := true
requestBody.SetVisible(&visible) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Names().ByNameId("workbookNamedItem-id").Patch(context.Background(), requestBody, nil)


```