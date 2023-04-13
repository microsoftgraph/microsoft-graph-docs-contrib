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


requestBody := graphmodels.NewWorkbookChart()
id := "id-value"
requestBody.SetId(&id) 
height := float64(99)
requestBody.SetHeight(&height) 
left := float64(99)
requestBody.SetLeft(&left) 

result, err := graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Workbook().WorksheetsById("workbookWorksheet-id").Charts().Post(context.Background(), requestBody, nil)


```