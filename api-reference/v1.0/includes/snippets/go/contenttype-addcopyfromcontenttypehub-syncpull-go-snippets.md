---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAddCopyFromContentTypeHubPostRequestBody()
contentTypeId := "0x0101"
requestBody.SetContentTypeId(&contentTypeId) 

result, err := graphClient.SitesById("site-id").ListsById("list-id").ContentTypes().MicrosoftGraphAddCopyFromContentTypeHub().Post(context.Background(), requestBody, nil)


```