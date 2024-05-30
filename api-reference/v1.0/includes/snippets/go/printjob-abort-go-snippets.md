---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphprint "github.com/microsoftgraph/msgraph-sdk-go/print"
	  //other-imports
)

requestBody := graphprint.NewAbortPostRequestBody()
reason := "String"
requestBody.SetReason(&reason) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Print().Printers().ByPrinterId("printer-id").Jobs().ByPrintJobId("printJob-id").Abort().Post(context.Background(), requestBody, nil)


```