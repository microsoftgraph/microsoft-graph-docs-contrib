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


requestParameters := &graphprint.PrintPrinterItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","capabilities"},
}
configuration := &graphprint.PrintPrinterItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

printers, err := graphClient.Print().Printers().ByPrinterId("printer-id").Get(context.Background(), configuration)


```