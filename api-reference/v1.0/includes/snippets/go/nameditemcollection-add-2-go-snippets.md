---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

requestBody := graphdrives.NewAddFormulaLocalPostRequestBody()
name := "test7"
requestBody.SetName(&name) 
formula := "=SUM(Sheet2!$A$1+Sheet2!$A$2)"
requestBody.SetFormula(&formula) 
comment := "Comment for the named item"
requestBody.SetComment(&comment) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
addFormulaLocal, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Names().AddFormulaLocal().Post(context.Background(), requestBody, nil)


```