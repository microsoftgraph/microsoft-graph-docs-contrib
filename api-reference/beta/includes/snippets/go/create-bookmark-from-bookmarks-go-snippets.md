---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewBookmark()
displayName := "Contoso Install Site"
requestBody.SetDisplayName(&displayName)
webUrl := "http://www.contoso.com/"
requestBody.SetWebUrl(&webUrl)
description := "Try or buy Contoso for Home or Business and view product information"
requestBody.SetDescription(&description)
keywords := msgraphsdk.NewAnswerKeyword()
requestBody.SetKeywords(keywords)
keywords.SetKeywords( []String {
	"Contoso",
	"install",
}
keywords.SetReservedKeywords( []String {
	"Contoso",
}
matchSimilarKeywords := true
keywords.SetMatchSimilarKeywords(&matchSimilarKeywords)
requestBody.SetAvailabilityStartDateTime(nil)
requestBody.SetAvailabilityEndDateTime(nil)
requestBody.SetPlatforms( []DevicePlatformType {
	"windows",
}
requestBody.SetTargetedVariations( []AnswerVariant {
	msgraphsdk.NewAnswerVariant(),
languageTag := "es-es"
	SetLanguageTag(&languageTag)
displayName := "Sitio de instalación Contoso"
	SetDisplayName(&displayName)
description := "Pruebe o compre Contoso hogar o negocios y vea la información del producto"
	SetDescription(&description)
}
state := "published"
requestBody.SetState(&state)
result, err := graphClient.Search().Bookmarks().Post(requestBody)


```