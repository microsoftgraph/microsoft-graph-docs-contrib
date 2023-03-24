---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.PrintPrinterItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","capabilities"},
}
configuration := &graphconfig.PrintPrinterItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Print().PrintersById("printer-id").Get(context.Background(), configuration)


```