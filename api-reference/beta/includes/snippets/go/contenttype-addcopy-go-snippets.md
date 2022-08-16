---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAddCopyPostRequestBody()
contentType := "https://graph.microsoft.com/beta/sites/id/contentTypes/0x0101"
requestBody.SetContentType(&contentType) 

result, err := graphClient.SitesById("site-id").ListsById("list-id").ContentTypes().AddCopy().Post(requestBody)


```