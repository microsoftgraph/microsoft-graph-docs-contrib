---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.HorizontalSectionColumnRequestBuilderGetQueryParameters{
	Select: [] string {"id","expand=webparts"},
}
configuration := &graphconfig.HorizontalSectionColumnRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").PagesById("sitePage-id").CanvasLayout().HorizontalSectionsById("horizontalSection-id").ColumnsById("horizontalSectionColumn-id").Get(context.Background(), configuration)


```