---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



start, err := graphClient.Print().Shares().ByPrinterShareId("printerShare-id").Jobs().ByPrintJobId("printJob-id").Start().Post(context.Background(), nil)


```