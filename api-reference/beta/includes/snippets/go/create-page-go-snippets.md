---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSitePage()
name := "Events.aspx"
requestBody.SetName(&name) 
title := "Team Events"
requestBody.SetTitle(&title) 
publishingState := graphmodels.NewPublicationFacet()
level := "checkedOut"
publishingState.SetLevel(&level) 
versionId := "0.1"
publishingState.SetVersionId(&versionId) 
requestBody.SetPublishingState(publishingState)


webPart := graphmodels.NewWebPart()
type := "rte"
webPart.SetType(&type) 
data := graphmodels.NewSitePageData()
additionalData := map[string]interface{}{
	"innerHTML" : "<p>Here are the team's upcoming events:</p>", 
}
data.SetAdditionalData(additionalData)
webPart.SetData(data)
webPart1 := graphmodels.NewWebPart()
type := "d1d91016-032f-456d-98a4-721247c305e8"
webPart1.SetType(&type) 
data := graphmodels.NewSitePageData()
additionalData := map[string]interface{}{
	"title" : "Events", 
	"description" : "Display upcoming events", 
serverProcessedContent := graphmodels.New()
htmlStrings := graphmodels.New()
	serverProcessedContent.SetHtmlStrings(htmlStrings)
searchablePlainTexts := graphmodels.New()
title := ""
searchablePlainTexts.SetTitle(&title) 
	serverProcessedContent.SetSearchablePlainTexts(searchablePlainTexts)
imageSources := graphmodels.New()
	serverProcessedContent.SetImageSources(imageSources)
links := graphmodels.New()
baseUrl := "https://www.contoso.com/sites/Engineering"
links.SetBaseUrl(&baseUrl) 
	serverProcessedContent.SetLinks(links)
componentDependencies := graphmodels.New()
layoutComponentId := "8ac0c53c-e8d0-4e3e-87d0-7449eb0d4027"
componentDependencies.SetLayoutComponentId(&layoutComponentId) 
	serverProcessedContent.SetComponentDependencies(componentDependencies)
	data.SetServerProcessedContent(serverProcessedContent)
	"dataVersion" : "1.0", 
properties := graphmodels.New()
selectedListId := "032e08ab-89b0-4d8f-bc10-73094233615c"
properties.SetSelectedListId(&selectedListId) 
selectedCategory := ""
properties.SetSelectedCategory(&selectedCategory) 
dateRangeOption := int32(0)
properties.SetDateRangeOption(&dateRangeOption) 
startDate := ""
properties.SetStartDate(&startDate) 
endDate := ""
properties.SetEndDate(&endDate) 
	isOnSeeAllPage := false
properties.SetIsOnSeeAllPage(&isOnSeeAllPage) 
layoutId := "FilmStrip"
properties.SetLayoutId(&layoutId) 
dataProviderId := "Event"
properties.SetDataProviderId(&dataProviderId) 
webId := "0764c419-1ecc-4126-ba32-0c25ae0fffe8"
properties.SetWebId(&webId) 
siteId := "6b4ffc7a-cfc2-4a76-903a-1cc3686dee23"
properties.SetSiteId(&siteId) 
	data.SetProperties(properties)
}
data.SetAdditionalData(additionalData)
webPart1.SetData(data)

webParts := []graphmodels.WebPartable {
	webPart,
	webPart1,

}
requestBody.SetWebParts(webParts)

result, err := graphClient.SitesById("site-id").Pages().Post(requestBody)


```