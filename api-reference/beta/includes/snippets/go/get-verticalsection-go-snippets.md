---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.VerticalSectionRequestBuilderGetQueryParameters{
	Select: [] string {"emphasis","expand=webparts"},
}
configuration := &graphconfig.VerticalSectionRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").PagesById("sitePage-id").CanvasLayout().VerticalSection().Get(context.Background(), configuration)


```