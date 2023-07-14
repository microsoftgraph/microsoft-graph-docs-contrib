---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphprint "github.com/microsoftgraph/msgraph-sdk-go/print"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphprint.NewAbortPostRequestBody()
reason := "String"
requestBody.SetReason(&reason) 

graphClient.Print().Printers().ByPrinterId("printer-id").Jobs().ByJobId("printJob-id").Abort().Post(context.Background(), requestBody, nil)


```