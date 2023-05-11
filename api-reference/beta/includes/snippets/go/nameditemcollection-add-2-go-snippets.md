---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/Workbook/Names/AddFormulaLocal"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddFormulaLocalPostRequestBody()
name := "test7"
requestBody.SetName(&name) 
formula := "=SUM(Sheet2!$A$1+Sheet2!$A$2)"
requestBody.SetFormula(&formula) 
comment := "Comment for the named item"
requestBody.SetComment(&comment) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Names().AddFormulaLocal().Post(context.Background(), requestBody, nil)


```