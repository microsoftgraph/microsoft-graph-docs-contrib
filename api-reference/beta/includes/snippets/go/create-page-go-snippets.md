---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSitePage()
name := "Events.aspx"
requestBody.SetName(&name)
title := "Team Events"
requestBody.SetTitle(&title)
publishingState := msgraphsdk.NewPublicationFacet()
requestBody.SetPublishingState(publishingState)
level := "checkedOut"
publishingState.SetLevel(&level)
versionId := "0.1"
publishingState.SetVersionId(&versionId)
requestBody.SetWebParts( []WebPart {
	msgraphsdk.NewWebPart(),
type := "rte"
	SetType(&type)
data := msgraphsdk.NewSitePageData()
	SetData(data)
	data.SetAdditionalData(map[string]interface{}{
		"innerHTML": "<p>Here are the team's upcoming events:</p>",
	}
	msgraphsdk.NewWebPart(),
type := "d1d91016-032f-456d-98a4-721247c305e8"
	SetType(&type)
data := msgraphsdk.NewSitePageData()
	SetData(data)
	data.SetAdditionalData(map[string]interface{}{
		"title": "Events",
		"description": "Display upcoming events",
		"dataVersion": "1.0",
	}
}
siteId := "site-id"
result, err := graphClient.SitesById(&siteId).Pages().Post(requestBody)


```