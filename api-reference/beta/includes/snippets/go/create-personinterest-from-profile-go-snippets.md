---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPersonInterest()
requestBody.SetCategories( []String {
	"Sports",
}
description := "World's greatest football club"
requestBody.SetDescription(&description)
displayName := "Chelsea FC"
requestBody.SetDisplayName(&displayName)
webUrl := "https://www.chelseafc.com"
requestBody.SetWebUrl(&webUrl)
options := &msgraphsdk.InterestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Interests().Post(options)


```