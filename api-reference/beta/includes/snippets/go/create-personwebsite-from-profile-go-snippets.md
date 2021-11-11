---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPersonWebsite()
requestBody.SetCategories( []String {
	"football",
}
displayName := "Lyn Damer"
requestBody.SetDisplayName(&displayName)
webUrl := "www.lyndamer.no"
requestBody.SetWebUrl(&webUrl)
options := &msgraphsdk.WebsitesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Websites().Post(options)


```