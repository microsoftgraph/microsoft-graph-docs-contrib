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
state := graphmodels.PUBLISHED_ANSWERSTATE 
requestBody.SetState(&state) 

result, err := graphClient.Search().Bookmarks().Post(context.Background(), requestBody, nil)


```