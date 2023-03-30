---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//search"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewQna()
displayName := "Global Country Holidays"
requestBody.SetDisplayName(&displayName) 
webUrl := "http://www.contoso.com/"
requestBody.SetWebUrl(&webUrl) 
description := "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend.    <table>    <thead>    <tr>    <td><strong>2021 Dates</strong></td>    <td><strong>Holiday</strong></td>    </tr>    </thead>    <tbody>    <tr>        <td>January 1, 2021</td>        <td>New Year's Day</td>    </tr>        <tr>        <td>January 18, 2021</td>        <td>Martin Luther King Day</td>    </tr>        <tr>        <td>February 15, 2021</td>        <td>Presidents Day</td>    </tr>        <tr>        <td>May 31, 2021</td>        <td>Memorial Day</td>    </tr>        <tr>        <td>July 5, 2021</td>        <td>Independence Day</td>    </tr>        <tr>        <td>September 6, 2021</td>        <td>Labor Day</td>    </tr>        <tr>        <td>November 25, 2021 - November 26, 2021</td>        <td>Thanksgiving Day and Day after Thanksgiving</td>    </tr>    <tr>        <td>December 23, 2021 - December 24, 2021</td>        <td>Christmas Eve and Christmas Day</td>    </tr>    </tbody>    </table>"
requestBody.SetDescription(&description) 
keywords := graphmodels.NewAnswerKeyword()
keywords := []string {
	"new years day",
	"martin luther king day",
	"presidents day",
	"memorial day",
	"independence day",
	"labor day",
	"thanksgiving",
	"christmas",

}
keywords.SetKeywords(keywords)
reservedKeywords := []string {
	"holidays",
	"paid days off",

}
keywords.SetReservedKeywords(reservedKeywords)
matchSimilarKeywords := true
keywords.SetMatchSimilarKeywords(&matchSimilarKeywords) 
requestBody.SetKeywords(keywords)
availabilityStartDateTime , err := time.Parse(time.RFC3339, "2020-09-21T20:01:37Z")
requestBody.SetAvailabilityStartDateTime(&availabilityStartDateTime) 
availabilityEndDateTime , err := time.Parse(time.RFC3339, "2021-12-31T20:01:37Z")
requestBody.SetAvailabilityEndDateTime(&availabilityEndDateTime) 
languageTags := []string {
	"en-us",

}
requestBody.SetLanguageTags(languageTags)
platforms := []graphmodels.DevicePlatformTypeable {
	devicePlatformType := graphmodels.IOS_DEVICEPLATFORMTYPE 
	requestBody.SetDevicePlatformType(&devicePlatformType) 

}
requestBody.SetPlatforms(platforms)
state := graphmodels.PUBLISHED_ANSWERSTATE 
requestBody.SetState(&state) 

result, err := graphClient.Search().Qnas().Post(context.Background(), requestBody, nil)


```