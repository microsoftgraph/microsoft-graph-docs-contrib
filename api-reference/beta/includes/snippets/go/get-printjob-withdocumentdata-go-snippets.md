---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphprint "github.com/microsoftgraph/msgraph-beta-sdk-go/print"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphprint.PrintPrinterItemJobItemRequestBuilderGetQueryParameters{
	Expand: [] string {"documents"},
}
configuration := &graphprint.PrintPrinterItemJobItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

jobs, err := graphClient.Print().Printers().ByPrinterId("printer-id").Jobs().ByPrintJobId("printJob-id").Get(context.Background(), configuration)


```