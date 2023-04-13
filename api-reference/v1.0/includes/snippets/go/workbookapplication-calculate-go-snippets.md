---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/Application/Calculate"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCalculatePostRequestBody()
calculationType := "calculationType-value"
requestBody.SetCalculationType(&calculationType) 

graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Workbook().Application().Calculate().Post(context.Background(), requestBody, nil)


```