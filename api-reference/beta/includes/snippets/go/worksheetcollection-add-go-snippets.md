---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/Workbook/Worksheets/Add"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddPostRequestBody()
name := "name-value"
requestBody.SetName(&name) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Worksheets().Add().Post(context.Background(), requestBody, nil)


```