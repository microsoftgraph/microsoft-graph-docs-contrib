---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphsites.SiteItemPageItemCanvasLayoutHorizontalSectionItemColumnItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","expand=webparts"},
}
configuration := &graphsites.SiteItemPageItemCanvasLayoutHorizontalSectionItemColumnItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Sites().BySiteId("site-id").Pages().ByPageId("sitePage-id").CanvasLayout().HorizontalSections().ByHorizontalSectionId("horizontalSection-id").Columns().ByColumnId("horizontalSectionColumn-id").Get(context.Background(), configuration)


```