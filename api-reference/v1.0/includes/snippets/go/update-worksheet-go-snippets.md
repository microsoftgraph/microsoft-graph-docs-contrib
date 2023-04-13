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


requestBody := graphmodels.NewWorkbookWorksheet()
position := int32(99)
requestBody.SetPosition(&position) 
name := "name-value"
requestBody.SetName(&name) 
visibility := "visibility-value"
requestBody.SetVisibility(&visibility) 

result, err := graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Workbook().WorksheetsById("workbookWorksheet-id").Patch(context.Background(), requestBody, nil)


```