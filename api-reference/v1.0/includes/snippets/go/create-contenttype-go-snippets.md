---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewContentType()
name := "docSet"
requestBody.SetName(&name)
description := "custom docset"
requestBody.SetDescription(&description)
base := msgraphsdk.NewContentType()
requestBody.SetBase(base)
base.SetAdditionalData(map[string]interface{}{
	"name": "Document Set",
	"id": "0x0120D520",
}
group := "Document Set Content Types"
requestBody.SetGroup(&group)
options := &msgraphsdk.ContentTypesRequestBuilderPostOptions{
	Body: requestBody,
}
siteId := "site-id"
result, err := graphClient.SitesById(&siteId).ContentTypes().Post(options)


```