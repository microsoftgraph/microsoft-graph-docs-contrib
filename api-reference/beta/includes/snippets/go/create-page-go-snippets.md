---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSitePage()
name := "test.aspx"
requestBody.SetName(&name) 
title := "test"
requestBody.SetTitle(&title) 
pageLayout := graphmodels.ARTICLE_PAGELAYOUTTYPE 
requestBody.SetPageLayout(&pageLayout) 
showComments := true
requestBody.SetShowComments(&showComments) 
showRecommendedPages := false
requestBody.SetShowRecommendedPages(&showRecommendedPages) 
titleArea := graphmodels.NewTitleArea()
enableGradientEffect := true
titleArea.SetEnableGradientEffect(&enableGradientEffect) 
imageWebUrl := "/_LAYOUTS/IMAGES/VISUALTEMPLATETITLEIMAGE.JPG"
titleArea.SetImageWebUrl(&imageWebUrl) 
layout := graphmodels.COLORBLOCK_TITLEAREALAYOUTTYPE 
titleArea.SetLayout(&layout) 
showAuthor := true
titleArea.SetShowAuthor(&showAuthor) 
showPublishedDate := false
titleArea.SetShowPublishedDate(&showPublishedDate) 
showTextBlockAboveTitle := false
titleArea.SetShowTextBlockAboveTitle(&showTextBlockAboveTitle) 
textAboveTitle := "TEXT ABOVE TITLE"
titleArea.SetTextAboveTitle(&textAboveTitle) 
textAlignment := graphmodels.LEFT_TITLEAREATEXTALIGNMENTTYPE 
titleArea.SetTextAlignment(&textAlignment) 
additionalData := map[string]interface{}{
	"imageSourceType" : int32(2) , 
	"title" : "sample1", 
}
titleArea.SetAdditionalData(additionalData)
requestBody.SetTitleArea(titleArea)
canvasLayout := graphmodels.NewCanvasLayout()


horizontalSection := graphmodels.NewHorizontalSection()
layout := graphmodels.ONETHIRDRIGHTCOLUMN_HORIZONTALSECTIONLAYOUTTYPE 
horizontalSection.SetLayout(&layout) 
id := "1"
horizontalSection.SetId(&id) 
emphasis := graphmodels.NONE_SECTIONEMPHASISTYPE 
horizontalSection.SetEmphasis(&emphasis) 


horizontalSectionColumn := graphmodels.NewHorizontalSectionColumn()
id := "1"
horizontalSectionColumn.SetId(&id) 
width := int32(8)
horizontalSectionColumn.SetWidth(&width) 


webPart := graphmodels.NewWebPart()
id := "6f9230af-2a98-4952-b205-9ede4f9ef548"
webPart.SetId(&id) 
additionalData := map[string]interface{}{
	"innerHtml" : "<p><b>Hello!</b></p>", 
}
webPart.SetAdditionalData(additionalData)

webparts := []graphmodels.WebPartable {
	webPart,

}
horizontalSectionColumn.SetWebparts(webparts)
horizontalSectionColumn1 := graphmodels.NewHorizontalSectionColumn()
id := "2"
horizontalSectionColumn1.SetId(&id) 
width := int32(4)
horizontalSectionColumn1.SetWidth(&width) 


webPart := graphmodels.NewWebPart()
id := "73d07dde-3474-4545-badb-f28ba239e0e1"
webPart.SetId(&id) 
additionalData := map[string]interface{}{
	"webPartType" : "d1d91016-032f-456d-98a4-721247c305e8", 
data := graphmodels.New()
dataVersion := "1.9"
data.SetDataVersion(&dataVersion) 
description := "Show an image on your page"
data.SetDescription(&description) 
title := "Image"
data.SetTitle(&title) 
properties := graphmodels.New()
imageSourceType := int32(2)
properties.SetImageSourceType(&imageSourceType) 
altText := ""
properties.SetAltText(&altText) 
overlayText := ""
properties.SetOverlayText(&overlayText) 
siteid := "0264cabe-6b92-450a-b162-b0c3d54fe5e8"
properties.SetSiteid(&siteid) 
webid := "f3989670-cd37-4514-8ccb-0f7c2cbe5314"
properties.SetWebid(&webid) 
listid := "bdb41041-eb06-474e-ac29-87093386bb14"
properties.SetListid(&listid) 
uniqueid := "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb"
properties.SetUniqueid(&uniqueid) 
imgWidth := int32(4288)
properties.SetImgWidth(&imgWidth) 
imgHeight := int32(2848)
properties.SetImgHeight(&imgHeight) 
	fixAspectRatio := false
properties.SetFixAspectRatio(&fixAspectRatio) 
captionText := ""
properties.SetCaptionText(&captionText) 
alignment := "Center"
properties.SetAlignment(&alignment) 
	data.SetProperties(properties)
serverProcessedContent := graphmodels.New()


 := graphmodels.New()
key := "imageSource"
.SetKey(&key) 
value := "/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG"
.SetValue(&value) 

	imageSources := []graphmodels.Objectable {
		,

	}
	serverProcessedContent.SetImageSources(imageSources)


 := graphmodels.New()
key := "imageSource"
.SetKey(&key) 
value := graphmodels.New()
siteid := "0264cabe-6b92-450a-b162-b0c3d54fe5e8"
value.SetSiteid(&siteid) 
webid := "f3989670-cd37-4514-8ccb-0f7c2cbe5314"
value.SetWebid(&webid) 
listid := "bdb41041-eb06-474e-ac29-87093386bb14"
value.SetListid(&listid) 
uniqueid := "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb"
value.SetUniqueid(&uniqueid) 
width := "4288"
value.SetWidth(&width) 
height := "2848"
value.SetHeight(&height) 
.SetValue(value)

	customMetadata := []graphmodels.Objectable {
		,

	}
	serverProcessedContent.SetCustomMetadata(customMetadata)
	data.SetServerProcessedContent(serverProcessedContent)
	webPart.SetData(data)
}
webPart.SetAdditionalData(additionalData)

webparts := []graphmodels.WebPartable {
	webPart,

}
horizontalSectionColumn1.SetWebparts(webparts)

columns := []graphmodels.HorizontalSectionColumnable {
	horizontalSectionColumn,
	horizontalSectionColumn1,

}
horizontalSection.SetColumns(columns)

horizontalSections := []graphmodels.HorizontalSectionable {
	horizontalSection,

}
canvasLayout.SetHorizontalSections(horizontalSections)
requestBody.SetCanvasLayout(canvasLayout)

result, err := graphClient.Sites().BySiteId("site-id").Pages().Post(context.Background(), requestBody, nil)


```