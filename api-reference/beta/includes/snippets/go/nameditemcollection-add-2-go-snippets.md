---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewAddFormulaLocalPostRequestBody()
name := "test7"
requestBody.SetName(&name) 
formula := "=SUM(Sheet2!$A$1+Sheet2!$A$2)"
requestBody.SetFormula(&formula) 
comment := "Comment for the named item"
requestBody.SetComment(&comment) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Names().AddFormulaLocal().Post(context.Background(), requestBody, nil)


```