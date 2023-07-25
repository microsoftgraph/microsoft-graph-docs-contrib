---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewHorizontalSection()
emphasis := graphmodels.SOFT_SECTIONEMPHASISTYPE 
requestBody.SetEmphasis(&emphasis) 
layout := graphmodels.ONECOLUMN_HORIZONTALSECTIONLAYOUTTYPE 
requestBody.SetLayout(&layout) 
id := "3"
requestBody.SetId(&id) 


horizontalSectionColumn := graphmodels.NewHorizontalSectionColumn()
id := "1"
horizontalSectionColumn.SetId(&id) 
width := int32(12)
horizontalSectionColumn.SetWidth(&width) 


webPart := graphmodels.NewWebPart()
id := "20a69b85-529c-41f3-850e-c93458aa74eb"
webPart.SetId(&id) 
additionalData := map[string]interface{}{
	"innerHtml" : "<p>sample text in text web part</p>", 
}
webPart.SetAdditionalData(additionalData)

webparts := []graphmodels.WebPartable {
	webPart,
}
horizontalSectionColumn.SetWebparts(webparts)

columns := []graphmodels.HorizontalSectionColumnable {
	horizontalSectionColumn,
}
requestBody.SetColumns(columns)

result, err := graphClient.Sites().BySiteId("site-id").Pages().ByPageId("sitePage-id").CanvasLayout().HorizontalSections().Post(context.Background(), requestBody, nil)


```