---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewClientContextRequestBody()
clientContext := "785f4929-92ca-497b-863f-c778c77c9758"
requestBody.SetClientContext(&clientContext)
options := &msgraphsdk.AddLargeGalleryViewRequestBuilderPostOptions{
	Body: requestBody,
}
callId := "call-id"
result, err := graphClient.Communications().CallsById(&callId).AddLargeGalleryView(call-id).Post(options)


```