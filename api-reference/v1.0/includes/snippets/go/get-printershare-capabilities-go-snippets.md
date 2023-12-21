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


requestParameters := &graphprint.PrintShareItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","capabilities"},
}
configuration := &graphprint.PrintShareItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

shares, err := graphClient.Print().Shares().ByPrinterShareId("printerShare-id").Get(context.Background(), configuration)


```