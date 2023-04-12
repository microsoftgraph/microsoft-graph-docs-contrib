---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//search"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookmark()
displayName := "Contoso Install Site"
requestBody.SetDisplayName(&displayName) 
webUrl := "http://www.contoso.com/"
requestBody.SetWebUrl(&webUrl) 
description := "Try or buy Contoso for Home or Business and view product information"
requestBody.SetDescription(&description) 
keywords := graphmodels.NewAnswerKeyword()
keywords := []string {
	"Contoso",
	"install",

}
keywords.SetKeywords(keywords)
reservedKeywords := []string {
	"Contoso",

}
keywords.SetReservedKeywords(reservedKeywords)
matchSimilarKeywords := true
keywords.SetMatchSimilarKeywords(&matchSimilarKeywords) 
requestBody.SetKeywords(keywords)
availabilityStartDateTime := null
requestBody.SetAvailabilityStartDateTime(&availabilityStartDateTime) 
availabilityEndDateTime := null
requestBody.SetAvailabilityEndDateTime(&availabilityEndDateTime) 
platforms := []graphmodels.DevicePlatformTypeable {
	devicePlatformType := graphmodels.WINDOWS_DEVICEPLATFORMTYPE 
	requestBody.SetDevicePlatformType(&devicePlatformType) 

}
requestBody.SetPlatforms(platforms)


answerVariant := graphmodels.NewAnswerVariant()
languageTag := "es-es"
answerVariant.SetLanguageTag(&languageTag) 
displayName := "Sitio de instalación Contoso"
answerVariant.SetDisplayName(&displayName) 
description := "Pruebe o compre Contoso hogar o negocios y vea la información del producto"
answerVariant.SetDescription(&description) 

targetedVariations := []graphmodels.AnswerVariantable {
	answerVariant,

}
requestBody.SetTargetedVariations(targetedVariations)
state := graphmodels.PUBLISHED_ANSWERSTATE 
requestBody.SetState(&state) 

result, err := graphClient.Search().Bookmarks().Post(context.Background(), requestBody, nil)


```