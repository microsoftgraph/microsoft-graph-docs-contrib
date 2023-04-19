---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/Workbook/Names/Add"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddPostRequestBody()
name := "test5"
requestBody.SetName(&name) 
reference := "=Sheet1!$F$15:$N$27"
requestBody.SetReference(&reference) 
comment := "Comment for the named item"
requestBody.SetComment(&comment) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Names().Add().Post(context.Background(), requestBody, nil)


```