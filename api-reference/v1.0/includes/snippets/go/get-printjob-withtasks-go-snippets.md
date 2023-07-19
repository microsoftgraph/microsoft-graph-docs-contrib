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


requestParameters := &graphprint.PrintPrinterItemJobItemRequestBuilderGetQueryParameters{
	Expand: [] string {"tasks"},
}
configuration := &graphprint.PrintPrinterItemJobItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Print().Printers().ByPrinterId("printer-id").Jobs().ByJobId("printJob-id").Get(context.Background(), configuration)


```