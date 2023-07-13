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
emphasis := graphmodels.STRONG_SECTIONEMPHASISTYPE 
requestBody.SetEmphasis(&emphasis) 
layout := graphmodels.TWOCOLUMNS_HORIZONTALSECTIONLAYOUTTYPE 
requestBody.SetLayout(&layout) 

result, err := graphClient.Sites().BySiteId("site-id").Pages().ByPageId("sitePage-id").CanvasLayout().HorizontalSections().ByHorizontalSectionId("horizontalSection-id").Patch(context.Background(), requestBody, nil)


```