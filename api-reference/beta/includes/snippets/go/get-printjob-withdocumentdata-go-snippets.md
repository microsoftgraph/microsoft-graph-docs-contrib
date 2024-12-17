---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphprint "github.com/microsoftgraph/msgraph-beta-sdk-go/print"
	  //other-imports
)

requestParameters := &graphprint.PrintersItemJobsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"documents"},
}
configuration := &graphprint.PrintersItemJobsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
jobs, err := graphClient.Print().Printers().ByPrinterId("printer-id").Jobs().ByPrintJobId("printJob-id").Get(context.Background(), configuration)


```