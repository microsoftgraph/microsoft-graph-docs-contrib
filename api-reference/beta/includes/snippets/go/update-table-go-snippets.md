---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWorkbookTable()
name := "name-value"
requestBody.SetName(&name) 
showHeaders := true
requestBody.SetShowHeaders(&showHeaders) 
showTotals := true
requestBody.SetShowTotals(&showTotals) 
style := "style-value"
requestBody.SetStyle(&style) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Tables().ByTableId("workbookTable-id").Patch(context.Background(), requestBody, nil)


```