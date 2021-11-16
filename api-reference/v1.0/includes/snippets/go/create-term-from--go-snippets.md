---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewTerm()
requestBody.SetLabels( []LocalizedLabel {
	msgraphsdk.NewLocalizedLabel(),
	SetAdditionalData(map[string]interface{}{
		"languageTag": "en-US",
		"name": "Car",
		"isDefault": true,
	}
}
options := &msgraphsdk.ChildrenRequestBuilderPostOptions{
	Body: requestBody,
}
siteId := "site-id"
setId := "set-id"
result, err := graphClient.SitesById(&siteId).TermStore().SetsById(&setId).Children().Post(options)


```